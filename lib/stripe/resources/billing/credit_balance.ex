# File generated from our OpenAPI spec
defmodule Stripe.Resources.Billing.CreditBalance do
  @moduledoc """
  CreditBalance
  """

  @typedoc """
  * `available_balance` - Expandable.
  * `ledger_balance` - Expandable.
  """
  @type t :: %__MODULE__{
          available_balance: map(),
          ledger_balance: map()
        }

  defstruct [:available_balance, :ledger_balance]

  @object_name "credit_balance"
  def object_name, do: @object_name

  def expandable_fields, do: ["available_balance", "ledger_balance"]
end
