# File generated from our OpenAPI spec
defmodule Stripe.Resources.Issuing.Transaction do
  @moduledoc """
  IssuingTransaction

  Any use of an [issued card](https://docs.stripe.com/issuing) that results in funds entering or leaving
  your Stripe account, such as a completed purchase or refund, is represented by an Issuing
  `Transaction` object.

  Related guide: [Issued card transactions](https://docs.stripe.com/issuing/purchases/transactions)
  """

  @typedoc """
  * `amount` - The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  * `amount_details` - Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Nullable. Expandable.
  * `authorization` - The `Authorization` object that led to this transaction. Nullable. Expandable.
  * `balance_transaction` - ID of the [balance transaction](https://docs.stripe.com/api/balance_transactions) associated with this transaction. Nullable. Expandable.
  * `card` - The card used to make this transaction. Expandable.
  * `cardholder` - The cardholder to whom this transaction belongs. Nullable. Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `dispute` - If you've disputed the transaction, the ID of the dispute. Nullable. Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `merchant_amount` - The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
  * `merchant_currency` - The currency with which the merchant is taking payment. Format: ISO 4217 currency code.
  * `merchant_data` - Expandable.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `network_data` - Details about the transaction, such as processing dates, set by the card network. Nullable. Expandable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `issuing.transaction`.
  * `purchase_details` - Additional purchase information that is optionally provided by the merchant. Nullable. Expandable.
  * `token` - [Token](https://docs.stripe.com/api/issuing/tokens/object) object used for this transaction. If a network token was not used for this transaction, this field will be null. Nullable. Expandable.
  * `treasury` - [Treasury](https://docs.stripe.com/api/treasury) details related to this transaction if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts Nullable. Expandable.
  * `type` - The nature of the transaction. Possible values: `capture`, `refund`.
  * `wallet` - The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Possible values: `apple_pay`, `google_pay`, `samsung_pay`. Nullable.
  """
  @type t :: %__MODULE__{
          amount: integer(),
          amount_details: map(),
          authorization: String.t() | map(),
          balance_transaction: String.t() | map(),
          card: String.t() | map(),
          cardholder: String.t() | map(),
          created: integer(),
          currency: String.t(),
          dispute: String.t() | map(),
          id: String.t(),
          livemode: boolean(),
          merchant_amount: integer(),
          merchant_currency: String.t(),
          merchant_data: map(),
          metadata: map(),
          network_data: map(),
          object: String.t(),
          purchase_details: map() | nil,
          token: String.t() | map() | nil,
          treasury: map() | nil,
          type: String.t(),
          wallet: String.t()
        }

  defstruct [
    :amount,
    :amount_details,
    :authorization,
    :balance_transaction,
    :card,
    :cardholder,
    :created,
    :currency,
    :dispute,
    :id,
    :livemode,
    :merchant_amount,
    :merchant_currency,
    :merchant_data,
    :metadata,
    :network_data,
    :object,
    :purchase_details,
    :token,
    :treasury,
    :type,
    :wallet
  ]

  @object_name "issuing.transaction"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "amount_details",
      "authorization",
      "balance_transaction",
      "card",
      "cardholder",
      "dispute",
      "merchant_data",
      "network_data",
      "purchase_details",
      "token",
      "treasury"
    ]
end
