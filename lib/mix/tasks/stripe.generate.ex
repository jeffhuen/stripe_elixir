defmodule Mix.Tasks.Stripe.Generate do
  @moduledoc """
  Generate Stripe API modules from the OpenAPI spec.

      mix stripe.generate              # Generate all files
      mix stripe.generate --clean      # Remove old generated files first
      mix stripe.generate --dry-run    # Preview what would be generated
      mix stripe.generate --stats      # Show generation statistics
  """

  use Mix.Task

  alias Stripe.Generator.Overrides

  @shortdoc "Generate Stripe API modules from OpenAPI spec"
  @endpoint_coverage_floor 532

  @generated_dirs [
    "lib/stripe/services",
    "lib/stripe/resources",
    "lib/stripe/params",
    "lib/stripe/events"
  ]

  @generated_files [
    "lib/stripe/object_types.ex",
    "lib/stripe/event_types.ex",
    "lib/stripe/events.ex"
  ]

  @impl Mix.Task
  def run(args) do
    {opts, _, _} =
      OptionParser.parse(args,
        switches: [clean: :boolean, dry_run: :boolean, stats: :boolean],
        aliases: [c: :clean, n: :dry_run, s: :stats]
      )

    clean? = Keyword.get(opts, :clean, false)
    dry_run? = Keyword.get(opts, :dry_run, false)
    stats? = Keyword.get(opts, :stats, false)

    spec_path = "priv/openapi/spec3.sdk.json"

    unless File.exists?(spec_path) do
      Mix.raise("OpenAPI spec not found at #{spec_path}. Run scripts/sync_openapi.sh first.")
    end

    Mix.shell().info("Parsing OpenAPI spec...")
    spec = Stripe.Generator.OpenAPI.parse(spec_path)
    Mix.shell().info("  API version: #{spec.api_version}")
    Mix.shell().info("  Resources: #{length(spec.resources)}")
    Mix.shell().info("  Path specs: #{map_size(spec.path_specs)}")

    if clean? do
      Mix.shell().info("\nCleaning generated directories...")
      clean_generated()
    end

    Mix.shell().info("\nGenerating services...")
    services = Stripe.Generator.ServiceGenerator.generate(spec)
    Mix.shell().info("  #{length(services)} service files")

    Mix.shell().info("Generating resources...")
    resources = Stripe.Generator.ResourceGenerator.generate(spec)
    Mix.shell().info("  #{length(resources)} resource files")

    Mix.shell().info("Generating params...")
    params = Stripe.Generator.ParamsGenerator.generate(spec)
    Mix.shell().info("  #{length(params)} param files")

    Mix.shell().info("Generating registries...")
    registries = Stripe.Generator.RegistryGenerator.generate(spec)
    Mix.shell().info("  #{length(registries)} registry files")

    Mix.shell().info("Generating events...")
    events = Stripe.Generator.EventGenerator.generate(spec)
    Mix.shell().info("  #{length(events)} event files")

    all_files = services ++ resources ++ params ++ registries ++ events
    validate_generation(all_files, spec)

    if dry_run? do
      Mix.shell().info("\n--- DRY RUN (no files written) ---")

      for {path, _content} <- all_files do
        Mix.shell().info("  #{path}")
      end
    else
      Mix.shell().info("\nWriting #{length(all_files)} files...")
      write_files(all_files)

      Mix.shell().info("Running mix format...")
      format_generated(all_files)
    end

    if stats? or not dry_run? do
      Mix.shell().info("\n--- Generation Stats ---")
      Mix.shell().info("  Services: #{length(services)}")
      Mix.shell().info("  Resources: #{length(resources)}")
      Mix.shell().info("  Params: #{length(params)}")
      Mix.shell().info("  Registries: #{length(registries)}")
      Mix.shell().info("  Events: #{length(events)}")
      Mix.shell().info("  Total files: #{length(all_files)}")
    end

    Mix.shell().info("\nDone!")
  end

  defp validate_generation(all_files, spec) do
    validate_override_keys(spec)
    validate_endpoint_coverage(spec)
    validate_no_duplicate_paths(all_files)
  end

  defp validate_no_duplicate_paths(all_files) do
    duplicates =
      all_files
      |> Enum.frequencies_by(fn {path, _content} -> path end)
      |> Enum.filter(fn {_path, count} -> count > 1 end)

    if duplicates != [] do
      details =
        duplicates
        |> Enum.map_join("\n", fn {path, count} -> "  #{path} (#{count}x)" end)

      Mix.raise("Duplicate output paths:\n#{details}")
    end
  end

  defp validate_endpoint_coverage(spec) do
    endpoint_count =
      spec.resources
      |> Enum.flat_map(& &1.operations)
      |> Enum.uniq_by(fn op -> {op.http_method, op.path} end)
      |> length()

    if endpoint_count < @endpoint_coverage_floor do
      Mix.raise(
        "Endpoint coverage dropped to #{endpoint_count}, expected >= #{@endpoint_coverage_floor}. Check skip_schemas."
      )
    end
  end

  defp validate_override_keys(spec) do
    endpoints =
      spec.resources
      |> Enum.flat_map(& &1.operations)
      |> Enum.map(fn op -> {to_string(op.http_method), op.path} end)
      |> MapSet.new()

    validate_override_map(Overrides.operation_overrides(), endpoints, "Operation")
    validate_override_map(Overrides.params_overrides(), endpoints, "Params")
  end

  defp validate_override_map(override_map, endpoints, label) do
    for {key, _value} <- override_map,
        not MapSet.member?(endpoints, key) do
      Mix.raise("#{label} override references unknown endpoint: #{inspect(key)}")
    end
  end

  defp clean_generated do
    for dir <- @generated_dirs do
      if File.exists?(dir) do
        File.rm_rf!(dir)
        Mix.shell().info("  Removed #{dir}/")
      end
    end

    for file <- @generated_files do
      if File.exists?(file) do
        File.rm!(file)
        Mix.shell().info("  Removed #{file}")
      end
    end
  end

  defp write_files(files) do
    for {path, content} <- files do
      dir = Path.dirname(path)
      File.mkdir_p!(dir)
      File.write!(path, content)
    end
  end

  defp format_generated(files) do
    paths = Enum.map(files, fn {path, _} -> path end)

    # Format in batches to avoid command-line length limits
    paths
    |> Enum.chunk_every(50)
    |> Enum.each(fn batch ->
      System.cmd("mix", ["format" | batch], stderr_to_stdout: true)
    end)
  end
end
