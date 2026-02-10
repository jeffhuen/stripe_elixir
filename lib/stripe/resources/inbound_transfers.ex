# File generated from our OpenAPI spec
defmodule Stripe.Resources.InboundTransfers do
  @moduledoc """
  TreasuryFinancialAccountsResourceInboundTransfers

  InboundTransfers contains inbound transfers features for a FinancialAccount.
  """

  @typedoc """
  * `ach` - Expandable.
  """
  @type t :: %__MODULE__{
          ach: String.t() | map() | nil
        }

  defstruct [:ach]

  @object_name "treasury_financial_accounts_resource_inbound_transfers"
  def object_name, do: @object_name

  def expandable_fields, do: ["ach"]
end
