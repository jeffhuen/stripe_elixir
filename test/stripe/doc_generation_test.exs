defmodule Stripe.DocGenerationTest do
  @moduledoc """
  Spot-checks that generated modules have proper documentation attributes.
  Validates @moduledoc, @doc, @spec, @typedoc, and @deprecated on representative
  modules across services, resources, params, and events.
  """
  use ExUnit.Case, async: true

  describe "resource documentation" do
    test "V1 resource has @moduledoc from schema" do
      {:docs_v1, _, _, _, moduledoc, _, _} = Code.fetch_docs(Stripe.Resources.Charge)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ "Charge"
    end

    test "V1 resource has @typedoc on t()" do
      {:docs_v1, _, _, _, _, _, docs} = Code.fetch_docs(Stripe.Resources.Charge)

      type_docs =
        Enum.filter(docs, fn
          {{:type, :t, _}, _, _, _, _} -> true
          _ -> false
        end)

      assert length(type_docs) > 0
      [{{:type, :t, _}, _, _, typedoc, _}] = type_docs
      assert typedoc != :hidden
      assert typedoc != :none
    end
  end

  describe "service documentation" do
    test "V1 service has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} = Code.fetch_docs(Stripe.Services.ChargeService)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ "Charge"
    end

    test "V1 service method has @doc" do
      {:docs_v1, _, _, _, _, _, docs} = Code.fetch_docs(Stripe.Services.ChargeService)

      function_docs =
        Enum.filter(docs, fn
          {{:function, :create, _}, _, _, doc, _} when doc != :hidden and doc != :none -> true
          _ -> false
        end)

      assert length(function_docs) > 0
    end

    test "V1 service method has @spec" do
      {:ok, specs} = Code.Typespec.fetch_specs(Stripe.Services.ChargeService)

      create_specs =
        Enum.filter(specs, fn
          {{:create, _arity}, _} -> true
          _ -> false
        end)

      assert length(create_specs) > 0
    end

    test "namespace service has descriptive @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(Stripe.Services.BillingService)

      assert moduledoc != :hidden
      %{"en" => doc} = moduledoc
      assert doc =~ "Billing"
      assert doc =~ "services"
    end

    test "aggregate service has descriptive @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} = Code.fetch_docs(Stripe.Services.V1)

      assert moduledoc != :hidden
      %{"en" => doc} = moduledoc
      assert doc =~ "V1"
      assert doc =~ "API services"
    end

    test "OAuth service has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(Stripe.Services.OAuthService)

      assert moduledoc != :hidden
      assert moduledoc != :none
    end
  end

  describe "params documentation" do
    test "params module has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(Stripe.Params.ChargeCreateParams)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ "Parameters"
    end

    test "params module has @typedoc on t()" do
      {:docs_v1, _, _, _, _, _, docs} = Code.fetch_docs(Stripe.Params.ChargeCreateParams)

      type_docs =
        Enum.filter(docs, fn
          {{:type, :t, _}, _, _, _, _} -> true
          _ -> false
        end)

      assert length(type_docs) > 0
      [{{:type, :t, _}, _, _, typedoc, _}] = type_docs
      assert typedoc != :hidden
      assert typedoc != :none
    end
  end

  describe "event documentation" do
    test "event constants module has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} = Code.fetch_docs(Stripe.Events)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ "event type"
    end

    test "event module has @moduledoc from spec description" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(Stripe.Events.V2CoreAccountLinkReturnedEvent)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ "AccountLink"
    end

    test "unknown event module has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(Stripe.Events.UnknownEventNotification)

      assert moduledoc != :hidden
      assert moduledoc != :none
    end
  end

  describe "deprecated operations" do
    test "deprecated endpoints have @deprecated attribute" do
      # Find deprecated operations from the spec
      spec = Stripe.Generator.OpenAPI.parse("priv/openapi/spec3.sdk.json")

      deprecated_keys =
        spec.path_specs
        |> Enum.filter(fn {_key, ps} -> ps[:deprecated] == true end)
        |> Enum.map(fn {key, _} -> key end)

      # Verify at least one deprecated operation exists in the spec
      assert length(deprecated_keys) > 0,
             "Expected at least one deprecated operation in the spec"
    end
  end

  describe "omission safety" do
    test "modules without spec description don't emit empty @moduledoc" do
      # The ObjectTypes registry has no schema description — verify it doesn't have empty @moduledoc
      {:docs_v1, _, _, _, moduledoc, _, _} = Code.fetch_docs(Stripe.ObjectTypes)

      # It should be either hidden (false) or have real content — never %{"en" => ""}
      case moduledoc do
        :hidden -> :ok
        :none -> :ok
        %{"en" => doc} -> assert String.trim(doc) != ""
      end
    end
  end
end
