defmodule StripeTest do
  use ExUnit.Case

  test "client/1 creates a client with defaults" do
    client = Stripe.client("sk_test_123")
    assert client.api_key == "sk_test_123"
    assert client.api_base == "https://api.stripe.com"
    assert client.max_retries == 2
    assert client.finch == Stripe.Finch
  end

  test "client/2 accepts options" do
    client =
      Stripe.client("sk_test_123",
        api_version: "2026-01-28.clover",
        stripe_account: "acct_abc",
        max_retries: 5
      )

    assert client.api_version == "2026-01-28.clover"
    assert client.stripe_account == "acct_abc"
    assert client.max_retries == 5
  end

  test "version/0 returns a version string" do
    assert is_binary(Stripe.version())
    assert Stripe.version() =~ ~r/^\d+\.\d+\.\d+/
  end
end
