# File generated from our OpenAPI spec
defmodule Stripe.Resources.Aba do
  @moduledoc """
  TreasuryFinancialAccountsResourceABARecord

  ABA Records contain U.S. bank account details per the ABA format.
  """

  @typedoc """
  * `account_holder_name` - The name of the person or business that owns the bank account. Max length: 5000.
  * `account_number` - The account number. Max length: 5000. Nullable.
  * `account_number_last4` - The last four characters of the account number. Max length: 5000.
  * `bank_name` - Name of the bank. Max length: 5000.
  * `routing_number` - Routing number for the account. Max length: 5000.
  """
  @type t :: %__MODULE__{
          account_holder_name: String.t(),
          account_number: String.t() | nil,
          account_number_last4: String.t(),
          bank_name: String.t(),
          routing_number: String.t()
        }

  defstruct [
    :account_holder_name,
    :account_number,
    :account_number_last4,
    :bank_name,
    :routing_number
  ]

  @object_name "treasury_financial_accounts_resource_aba_record"
  def object_name, do: @object_name
end
