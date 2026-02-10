# File generated from our OpenAPI spec
defmodule Stripe.Resources.NextActionDisplayBankTransferInstructions do
  @moduledoc """
  PaymentIntentNextActionDisplayBankTransferInstructions
  """

  @typedoc """
  * `amount_remaining` - The remaining amount that needs to be transferred to complete the payment. Nullable.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code. Nullable.
  * `financial_addresses` - A list of financial addresses that can be used to fund the customer balance Expandable.
  * `hosted_instructions_url` - A link to a hosted page that guides your customer through completing the transfer. Max length: 5000. Nullable.
  * `reference` - A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer. Max length: 5000. Nullable.
  * `type` - Type of bank transfer Possible values: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, `us_bank_transfer`.
  """
  @type t :: %__MODULE__{
          amount_remaining: integer(),
          currency: String.t(),
          financial_addresses: [map()] | nil,
          hosted_instructions_url: String.t(),
          reference: String.t(),
          type: String.t()
        }

  defstruct [
    :amount_remaining,
    :currency,
    :financial_addresses,
    :hosted_instructions_url,
    :reference,
    :type
  ]

  @object_name "payment_intent_next_action_display_bank_transfer_instructions"
  def object_name, do: @object_name

  def expandable_fields, do: ["financial_addresses"]
end
