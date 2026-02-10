# Hand-written — OAuth endpoints are not in the OpenAPI spec.
defmodule Stripe.Services.OAuthService do
  @moduledoc "OAuth API operations for Stripe Connect."
  alias Stripe.Client

  @doc """
  Build an OAuth authorize URL for Stripe Connect.

  ## Options

    * `:express` - Use Express account flow (`/express/oauth/authorize`)

  """
  def authorize_url(client, params \\ %{}, opts \\ []) do
    path =
      if Keyword.get(opts, :express, false) do
        "/express/oauth/authorize"
      else
        "/oauth/authorize"
      end

    params = Map.put_new_lazy(params, "client_id", fn -> resolve_client_id!(client, params) end)
    params = Map.put_new(params, "response_type", "code")

    query = Client.encode_form_params(params)
    {:ok, "#{client.connect_base}#{path}?#{query}"}
  end

  @doc """
  Exchange an authorization code for an access token, or refresh a token.
  """
  def token(client, params \\ %{}, opts \\ []) do
    opts =
      case Map.get(params, "client_secret") do
        nil -> opts
        secret -> Keyword.put(opts, :api_key, secret)
      end

    Client.request(
      client,
      :post,
      "/oauth/token",
      Keyword.merge(opts, params: params, base_address: :connect)
    )
  end

  @doc """
  Deauthorize a connected account.
  """
  def deauthorize(client, params \\ %{}, opts \\ []) do
    params = Map.put_new_lazy(params, "client_id", fn -> resolve_client_id!(client, params) end)

    Client.request(
      client,
      :post,
      "/oauth/deauthorize",
      Keyword.merge(opts, params: params, base_address: :connect)
    )
  end

  defp resolve_client_id!(client, params) do
    case Map.get(params, "client_id") || client.client_id do
      nil ->
        raise ArgumentError,
              "No client_id provided. Set :client_id on the Stripe client, " <>
                "or pass \"client_id\" in params."

      id ->
        id
    end
  end
end
