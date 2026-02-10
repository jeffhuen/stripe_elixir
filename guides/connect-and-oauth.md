# Connect & OAuth

Stripe Connect lets platforms make API calls on behalf of connected accounts.
This guide covers both direct API access and the OAuth onboarding flow.

## Making Calls on Behalf of Connected Accounts

Pass `stripe_account` to set the `Stripe-Account` header, either on the
client or per-request:

### On the Client

All calls made with this client will target the connected account:

```elixir
client = Stripe.client("sk_test_platform",
  stripe_account: "acct_connected_123"
)

{:ok, charge} = Stripe.Services.ChargeService.retrieve(client, "ch_123")
{:ok, customer} = Stripe.Services.CustomerService.list(client, %{"limit" => 10})
```

### Per-Request

Override for a single call without changing the client:

```elixir
client = Stripe.client("sk_test_platform")

{:ok, charge} = Stripe.Services.ChargeService.retrieve(client, "ch_123",
  stripe_account: "acct_connected_123"
)
```

## OAuth Flow

Use `Stripe.OAuth` to onboard connected accounts via the OAuth authorization
flow. This requires a `client_id` from your
[Connect settings](https://dashboard.stripe.com/settings/applications).

### 1. Build the Authorization URL

Redirect the user to Stripe's authorization page:

```elixir
client = Stripe.client("sk_test_...", client_id: "ca_...")

{:ok, url} = Stripe.OAuth.authorize_url(client, %{
  scope: "read_write",
  redirect_uri: "https://example.com/callback"
})

# Redirect the user to `url`
```

### 2. Exchange the Authorization Code

After the user authorizes, Stripe redirects back with a `code` parameter.
Exchange it for access tokens:

```elixir
{:ok, resp} = Stripe.OAuth.token(client, %{
  grant_type: "authorization_code",
  code: "ac_..."
})

# resp contains:
# - stripe_user_id: the connected account ID
# - access_token: for making API calls
# - refresh_token: for refreshing the access token
```

### 3. Deauthorize

Revoke access to a connected account:

```elixir
{:ok, resp} = Stripe.OAuth.deauthorize(client, %{
  client_id: "ca_...",
  stripe_user_id: "acct_..."
})
```

## Multi-Tenant Patterns

For platforms serving many connected accounts, create clients dynamically:

```elixir
defmodule MyApp.Stripe do
  def client_for_account(account_id) do
    Stripe.client(platform_key(),
      stripe_account: account_id
    )
  end

  defp platform_key do
    Application.fetch_env!(:my_app, :stripe_secret_key)
  end
end

# Usage
client = MyApp.Stripe.client_for_account("acct_123")
{:ok, charges} = Stripe.Services.ChargeService.list(client, %{"limit" => 5})
```

Since clients are plain structs with no global state, this is safe for
concurrent use across processes.
