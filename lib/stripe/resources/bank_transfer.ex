# File generated from our OpenAPI spec
defmodule Stripe.Resources.BankTransfer do
  @moduledoc """
  FundingInstructionsBankTransfer
  """

  @typedoc """
  * `country` - The country of the bank account to fund Max length: 5000.
  * `financial_addresses` - A list of financial addresses that can be used to fund a particular balance Expandable.
  * `type` - The bank_transfer type Possible values: `eu_bank_transfer`, `jp_bank_transfer`.
  """
  @type t :: %__MODULE__{
          country: String.t(),
          financial_addresses: [map()],
          type: String.t()
        }

  defstruct [:country, :financial_addresses, :type]

  @object_name "funding_instructions_bank_transfer"
  def object_name, do: @object_name

  def expandable_fields, do: ["financial_addresses"]
end
