# File generated from our OpenAPI spec
defmodule Stripe.Resources.Charge do
  @moduledoc """
  Charge

  The `Charge` object represents a single attempt to move money into your Stripe account.
  PaymentIntent confirmation is the most common way to create Charges, but [Account Debits](https://docs.stripe.com/connect/account-debits) may also create Charges.
  Some legacy payment flows create Charges directly, which is not recommended for new integrations.
  """

  @typedoc """
  * `amount` - Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
  * `amount_captured` - Amount in cents (or local equivalent) captured (can be less than the amount attribute on the charge if a partial capture was made).
  * `amount_refunded` - Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the charge if a partial refund was issued).
  * `application` - ID of the Connect application that created the charge. Nullable. Expandable.
  * `application_fee` - The application fee (if any) for the charge. [See the Connect documentation](https://docs.stripe.com/connect/direct-charges#collect-fees) for details. Nullable. Expandable.
  * `application_fee_amount` - The amount of the application fee (if any) requested for the charge. [See the Connect documentation](https://docs.stripe.com/connect/direct-charges#collect-fees) for details. Nullable.
  * `authorization_code` - Authorization code on the charge. Max length: 5000.
  * `balance_transaction` - ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes). Nullable. Expandable.
  * `billing_details` - Expandable.
  * `calculated_statement_descriptor` - The full statement descriptor that is passed to card networks, and that is displayed on your customers' credit card and bank statements. Allows you to see what the statement descriptor looks like after the static and dynamic portions are combined. This value only exists for card payments. Max length: 5000. Nullable.
  * `captured` - If the charge was created without capturing, this Boolean represents whether it is still uncaptured or has since been captured.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `customer` - ID of the customer this charge is for if one exists. Nullable. Expandable.
  * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 40000. Nullable.
  * `disputed` - Whether the charge has been disputed.
  * `failure_balance_transaction` - ID of the balance transaction that describes the reversal of the balance on your account due to payment failure. Nullable. Expandable.
  * `failure_code` - Error code explaining reason for charge failure if available (see [the errors section](https://docs.stripe.com/error-codes) for a list of codes). Max length: 5000. Nullable.
  * `failure_message` - Message to user further explaining reason for charge failure if available. Max length: 5000. Nullable.
  * `fraud_details` - Information on fraud assessments for the charge. Nullable. Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `level3` - Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `charge`.
  * `on_behalf_of` - The account (if any) the charge was made on behalf of without triggering an automatic transfer. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers) for details. Nullable. Expandable.
  * `outcome` - Details about whether the payment was accepted, and why. See [understanding declines](https://docs.stripe.com/declines) for details. Nullable. Expandable.
  * `paid` - `true` if the charge succeeded, or was successfully authorized for later capture.
  * `payment_intent` - ID of the PaymentIntent associated with this charge, if one exists. Nullable. Expandable.
  * `payment_method` - ID of the payment method used in this charge. Max length: 5000. Nullable.
  * `payment_method_details` - Details about the payment method at the time of the transaction. Nullable. Expandable.
  * `presentment_details` - Expandable.
  * `radar_options` - Expandable.
  * `receipt_email` - This is the email address that the receipt for this charge was sent to. Max length: 5000. Nullable.
  * `receipt_number` - This is the transaction number that appears on email receipts sent for this charge. This attribute will be `null` until a receipt has been sent. Max length: 5000. Nullable.
  * `receipt_url` - This is the URL to view the receipt for this charge. The receipt is kept up-to-date to the latest state of the charge, including any refunds. If the charge is for an Invoice, the receipt will be stylized as an Invoice receipt. Max length: 5000. Nullable.
  * `refunded` - Whether the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false.
  * `refunds` - A list of refunds that have been applied to the charge. Nullable. Expandable.
  * `review` - ID of the review associated with this charge if one exists. Nullable. Expandable.
  * `shipping` - Shipping information for the charge. Nullable. Expandable.
  * `source` - This is a legacy field that will be removed in the future. It contains the Source, Card, or BankAccount object used for the charge. For details about the payment method used for this charge, refer to `payment_method` or `payment_method_details` instead. Nullable. Expandable.
  * `source_transfer` - The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details. Nullable. Expandable.
  * `statement_descriptor` - For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).

  For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix. Max length: 5000. Nullable.
  * `statement_descriptor_suffix` - Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor. Max length: 5000. Nullable.
  * `status` - The status of the payment is either `succeeded`, `pending`, or `failed`. Possible values: `failed`, `pending`, `succeeded`.
  * `transfer` - ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter). Expandable.
  * `transfer_data` - An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details. Nullable. Expandable.
  * `transfer_group` - A string that identifies this transaction as part of a group. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-options) for details. Max length: 5000. Nullable.
  """
  @type t :: %__MODULE__{
          amount: integer(),
          amount_captured: integer(),
          amount_refunded: integer(),
          application: String.t() | map(),
          application_fee: String.t() | map(),
          application_fee_amount: integer(),
          authorization_code: String.t() | nil,
          balance_transaction: String.t() | map(),
          billing_details: map(),
          calculated_statement_descriptor: String.t(),
          captured: boolean(),
          created: integer(),
          currency: String.t(),
          customer: map(),
          description: String.t(),
          disputed: boolean(),
          failure_balance_transaction: String.t() | map(),
          failure_code: String.t(),
          failure_message: String.t(),
          fraud_details: map(),
          id: String.t(),
          level3: map() | nil,
          livemode: boolean(),
          metadata: map(),
          object: String.t(),
          on_behalf_of: String.t() | map(),
          outcome: map(),
          paid: boolean(),
          payment_intent: String.t() | map(),
          payment_method: String.t(),
          payment_method_details: map(),
          presentment_details: map() | nil,
          radar_options: map() | nil,
          receipt_email: String.t(),
          receipt_number: String.t(),
          receipt_url: String.t(),
          refunded: boolean(),
          refunds: map() | nil,
          review: String.t() | map(),
          shipping: String.t() | map(),
          source: String.t() | map(),
          source_transfer: String.t() | map(),
          statement_descriptor: String.t(),
          statement_descriptor_suffix: String.t(),
          status: String.t(),
          transfer: String.t() | map() | nil,
          transfer_data: map(),
          transfer_group: String.t()
        }

  defstruct [
    :amount,
    :amount_captured,
    :amount_refunded,
    :application,
    :application_fee,
    :application_fee_amount,
    :authorization_code,
    :balance_transaction,
    :billing_details,
    :calculated_statement_descriptor,
    :captured,
    :created,
    :currency,
    :customer,
    :description,
    :disputed,
    :failure_balance_transaction,
    :failure_code,
    :failure_message,
    :fraud_details,
    :id,
    :level3,
    :livemode,
    :metadata,
    :object,
    :on_behalf_of,
    :outcome,
    :paid,
    :payment_intent,
    :payment_method,
    :payment_method_details,
    :presentment_details,
    :radar_options,
    :receipt_email,
    :receipt_number,
    :receipt_url,
    :refunded,
    :refunds,
    :review,
    :shipping,
    :source,
    :source_transfer,
    :statement_descriptor,
    :statement_descriptor_suffix,
    :status,
    :transfer,
    :transfer_data,
    :transfer_group
  ]

  @object_name "charge"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "application",
      "application_fee",
      "balance_transaction",
      "billing_details",
      "customer",
      "failure_balance_transaction",
      "fraud_details",
      "level3",
      "on_behalf_of",
      "outcome",
      "payment_intent",
      "payment_method_details",
      "presentment_details",
      "radar_options",
      "refunds",
      "review",
      "shipping",
      "source",
      "source_transfer",
      "transfer",
      "transfer_data"
    ]

  defmodule Refunds do
    @moduledoc false

    @typedoc """
    * `data` - Details about each object.
    * `has_more` - True if this list has another page of items after this one that can be fetched.
    * `object` - String representing the object's type. Objects of the same type share the same value. Always has the value `list`. Possible values: `list`.
    * `url` - The URL where this list can be accessed. Max length: 5000.
    """
    @type t :: %__MODULE__{
            data: [map()] | nil,
            has_more: boolean() | nil,
            object: String.t() | nil,
            url: String.t() | nil
          }
    defstruct [:data, :has_more, :object, :url]
  end

  def __inner_types__ do
    %{
      "refunds" => __MODULE__.Refunds
    }
  end
end
