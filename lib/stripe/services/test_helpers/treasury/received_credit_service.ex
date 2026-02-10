# File generated from our OpenAPI spec
defmodule Stripe.Services.TestHelpers.Treasury.ReceivedCreditService do
  @moduledoc """
  ReceivedCredit API operations.
  """
  alias Stripe.Client

  @doc """
  Test mode: Create a ReceivedCredit

  Use this endpoint to simulate a test mode ReceivedCredit initiated by a third party. In live mode, you can’t directly create ReceivedCredits initiated by third parties.
  """
  @spec create(Client.t(), map(), keyword()) ::
          {:ok, term()} | {:error, Stripe.Error.t()}
  def create(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/test_helpers/treasury/received_credits",
      Keyword.merge(opts, params: params)
    )
  end
end
