# File generated from our OpenAPI spec
defmodule Stripe.Resources.Dispute do
  @moduledoc """
  Dispute

  A dispute occurs when a customer questions your charge with their card issuer.
  When this happens, you have the opportunity to respond to the dispute with
  evidence that shows that the charge is legitimate.

  Related guide: [Disputes and fraud](https://docs.stripe.com/disputes)
  """

  @typedoc """
  * `amount` - Disputed amount. Usually the amount of the charge, but it can differ (usually because of currency fluctuation or because only part of the order is disputed).
  * `balance_transactions` - List of zero, one, or two balance transactions that show funds withdrawn and reinstated to your Stripe account as a result of this dispute. Expandable.
  * `charge` - ID of the charge that's disputed. Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `enhanced_eligibility_types` - List of eligibility types that are included in `enhanced_evidence`.
  * `evidence` - Expandable.
  * `evidence_details` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `is_charge_refundable` - If true, it's still possible to refund the disputed payment. After the payment has been fully refunded, no further funds are withdrawn from your Stripe account as a result of this dispute.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `network_reason_code` - Network-dependent reason code for the dispute. Max length: 5000. Nullable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `dispute`.
  * `payment_intent` - ID of the PaymentIntent that's disputed. Nullable. Expandable.
  * `payment_method_details` - Expandable.
  * `reason` - Reason given by cardholder for dispute. Possible values are `bank_cannot_process`, `check_returned`, `credit_not_processed`, `customer_initiated`, `debit_not_authorized`, `duplicate`, `fraudulent`, `general`, `incorrect_account_details`, `insufficient_funds`, `noncompliant`, `product_not_received`, `product_unacceptable`, `subscription_canceled`, or `unrecognized`. Learn more about [dispute reasons](https://docs.stripe.com/disputes/categories). Max length: 5000.
  * `status` - The current status of a dispute. Possible values include:`warning_needs_response`, `warning_under_review`, `warning_closed`, `needs_response`, `under_review`, `won`, `lost`, or `prevented`. Possible values: `lost`, `needs_response`, `prevented`, `under_review`, `warning_closed`, `warning_needs_response`, `warning_under_review`, `won`.
  """
  @type t :: %__MODULE__{
          amount: integer(),
          balance_transactions: [String.t() | map()],
          charge: String.t() | map(),
          created: integer(),
          currency: String.t(),
          enhanced_eligibility_types: [String.t()],
          evidence: map(),
          evidence_details: map(),
          id: String.t(),
          is_charge_refundable: boolean(),
          livemode: boolean(),
          metadata: map(),
          network_reason_code: String.t() | nil,
          object: String.t(),
          payment_intent: String.t() | map(),
          payment_method_details: map() | nil,
          reason: String.t(),
          status: String.t()
        }

  defstruct [
    :amount,
    :balance_transactions,
    :charge,
    :created,
    :currency,
    :enhanced_eligibility_types,
    :evidence,
    :evidence_details,
    :id,
    :is_charge_refundable,
    :livemode,
    :metadata,
    :network_reason_code,
    :object,
    :payment_intent,
    :payment_method_details,
    :reason,
    :status
  ]

  @object_name "dispute"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "balance_transactions",
      "charge",
      "evidence",
      "evidence_details",
      "payment_intent",
      "payment_method_details"
    ]
end
