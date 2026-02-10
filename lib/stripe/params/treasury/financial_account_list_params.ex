# File generated from our OpenAPI spec
defmodule Stripe.Params.Treasury.FinancialAccountListParams do
  @moduledoc "Parameters for financial account list."

  @typedoc """
  * `created` - Only return FinancialAccounts that were created during the given date interval.
  * `ending_before` - An object ID cursor for use in pagination. Max length: 5000.
  * `expand` - Specifies which fields in the response should be expanded.
  * `limit` - A limit ranging from 1 to 100 (defaults to 10).
  * `starting_after` - An object ID cursor for use in pagination. Max length: 5000.
  * `status` - Only return FinancialAccounts that have the given status: `open` or `closed` Possible values: `closed`, `open`.
  """
  @type t :: %__MODULE__{
          created: map() | nil,
          ending_before: String.t() | nil,
          expand: [String.t()] | nil,
          limit: integer() | nil,
          starting_after: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:created, :ending_before, :expand, :limit, :starting_after, :status]
end
