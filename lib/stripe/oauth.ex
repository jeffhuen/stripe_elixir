defmodule Stripe.OAuth do
  @moduledoc """
  Stripe Connect OAuth helpers.

  Convenience module that delegates to `Stripe.Services.OAuthService`.

  ## Usage

      client = Stripe.client("sk_test_...", client_id: "ca_...")

      # Build authorization URL
      {:ok, url} = Stripe.OAuth.authorize_url(client)

      # Exchange code for token
      {:ok, resp} = Stripe.OAuth.token(client, %{"grant_type" => "authorization_code", "code" => "ac_..."})

      # Revoke access
      {:ok, resp} = Stripe.OAuth.deauthorize(client, %{"stripe_user_id" => "acct_..."})
  """

  defdelegate authorize_url(client, params \\ %{}, opts \\ []),
    to: Stripe.Services.OAuthService

  defdelegate token(client, params \\ %{}, opts \\ []),
    to: Stripe.Services.OAuthService

  defdelegate deauthorize(client, params \\ %{}, opts \\ []),
    to: Stripe.Services.OAuthService
end
