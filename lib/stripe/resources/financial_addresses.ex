# File generated from our OpenAPI spec
defmodule Stripe.Resources.FinancialAddresses do
  @moduledoc """
  TreasuryFinancialAccountsResourceFinancialAddressesFeatures

  Settings related to Financial Addresses features on a Financial Account
  """

  @typedoc """
  * `aba` - Expandable.
  """
  @type t :: %__MODULE__{
          aba: map() | nil
        }

  defstruct [:aba]

  @object_name "treasury_financial_accounts_resource_financial_addresses_features"
  def object_name, do: @object_name

  def expandable_fields, do: ["aba"]

  def __inner_types__ do
    %{
      "aba" => Stripe.Resources.AbaToggleSettings
    }
  end
end
