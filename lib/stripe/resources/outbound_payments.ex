# File generated from our OpenAPI spec
defmodule Stripe.Resources.OutboundPayments do
  @moduledoc """
  TreasuryFinancialAccountsResourceOutboundPayments

  Settings related to Outbound Payments features on a Financial Account
  """

  @typedoc """
  * `ach` - Expandable.
  * `us_domestic_wire` - Expandable.
  """
  @type t :: %__MODULE__{
          ach: String.t() | map() | nil,
          us_domestic_wire: String.t() | map() | nil
        }

  defstruct [:ach, :us_domestic_wire]

  @object_name "treasury_financial_accounts_resource_outbound_payments"
  def object_name, do: @object_name

  def expandable_fields, do: ["ach", "us_domestic_wire"]
end
