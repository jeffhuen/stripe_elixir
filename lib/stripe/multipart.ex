defmodule Stripe.Multipart do
  @moduledoc false

  @doc """
  Encode a map of params into a multipart/form-data body.

  File values must be maps with `:path` (or `:content`) and optional `:filename`
  and `:content_type` keys.

  Returns `{content_type_header, body}`.

  ## File param format

      %{
        "file" => %{path: "/tmp/upload.pdf"},
        "purpose" => "identity_document"
      }

  Or with raw content:

      %{
        "file" => %{content: <<binary>>, filename: "upload.pdf"},
        "purpose" => "identity_document"
      }
  """
  @spec encode(map()) :: {String.t(), iodata()}
  def encode(params) when is_map(params) do
    boundary = generate_boundary()

    parts =
      params
      |> flatten_params()
      |> Enum.map(fn {name, value} -> encode_part(name, value, boundary) end)

    body = [parts, "--#{boundary}--\r\n"]
    content_type = "multipart/form-data; boundary=#{boundary}"

    {content_type, IO.iodata_to_binary(body)}
  end

  @doc """
  Returns `true` if the params map contains a file value.
  """
  @spec has_file?(map()) :: boolean()
  def has_file?(params) when is_map(params) do
    Enum.any?(params, fn
      {_, %{path: _}} -> true
      {_, %{content: _}} -> true
      _ -> false
    end)
  end

  # -- Private ----------------------------------------------------------------

  defp generate_boundary do
    :crypto.strong_rand_bytes(30) |> Base.encode16(case: :lower)
  end

  defp flatten_params(params, prefix \\ nil)

  defp flatten_params(%{path: _} = file, prefix), do: [{prefix, file}]
  defp flatten_params(%{content: _} = file, prefix), do: [{prefix, file}]

  defp flatten_params(%{} = map, prefix) do
    Enum.flat_map(map, fn {key, value} ->
      new_prefix = if prefix, do: "#{prefix}[#{key}]", else: to_string(key)
      flatten_params(value, new_prefix)
    end)
  end

  defp flatten_params(list, prefix) when is_list(list) do
    list
    |> Enum.with_index()
    |> Enum.flat_map(fn {value, idx} ->
      flatten_params(value, "#{prefix}[#{idx}]")
    end)
  end

  defp flatten_params(true, prefix), do: [{prefix, "true"}]
  defp flatten_params(false, prefix), do: [{prefix, "false"}]
  defp flatten_params(value, prefix), do: [{prefix, value}]

  defp encode_part(name, %{path: path} = file, boundary) do
    filename = Map.get(file, :filename, Path.basename(path))
    content_type = Map.get(file, :content_type, "application/octet-stream")
    content = File.read!(path)

    [
      "--#{boundary}\r\n",
      "Content-Disposition: form-data; name=\"#{escape(name)}\"; filename=\"#{escape(filename)}\"\r\n",
      "Content-Type: #{content_type}\r\n",
      "\r\n",
      content,
      "\r\n"
    ]
  end

  defp encode_part(name, %{content: content} = file, boundary) do
    filename = Map.get(file, :filename, "upload")
    content_type = Map.get(file, :content_type, "application/octet-stream")

    [
      "--#{boundary}\r\n",
      "Content-Disposition: form-data; name=\"#{escape(name)}\"; filename=\"#{escape(filename)}\"\r\n",
      "Content-Type: #{content_type}\r\n",
      "\r\n",
      content,
      "\r\n"
    ]
  end

  defp encode_part(name, value, boundary) do
    [
      "--#{boundary}\r\n",
      "Content-Disposition: form-data; name=\"#{escape(name)}\"\r\n",
      "\r\n",
      to_string(value),
      "\r\n"
    ]
  end

  defp escape(str) do
    str
    |> String.replace("\"", "%22")
    |> String.replace("\r", " ")
    |> String.replace("\n", " ")
  end
end
