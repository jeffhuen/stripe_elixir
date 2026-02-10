# File generated from our OpenAPI spec
defmodule Stripe.Resources.Source do
  @moduledoc """
  Source

  `Source` objects allow you to accept a variety of payment methods. They
  represent a customer's payment instrument, and can be used with the Stripe API
  just like a `Card` object: once chargeable, they can be charged, or can be
  attached to customers.

  Stripe doesn't recommend using the deprecated [Sources API](https://docs.stripe.com/api/sources).
  We recommend that you adopt the [PaymentMethods API](https://docs.stripe.com/api/payment_methods).
  This newer API provides access to our latest features and payment method types.

  Related guides: [Sources API](https://docs.stripe.com/sources) and [Sources & Customers](https://docs.stripe.com/sources/customers).
  """

  @typedoc """
  * `ach_credit_transfer`
  * `ach_debit`
  * `acss_debit`
  * `alipay`
  * `allow_redisplay` - This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”. Possible values: `always`, `limited`, `unspecified`. Nullable.
  * `amount` - A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources. Nullable.
  * `au_becs_debit`
  * `bancontact`
  * `card`
  * `card_present`
  * `client_secret` - The client secret of the source. Used for client-side retrieval using a publishable key. Max length: 5000.
  * `code_verification` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready. Required for `single_use` sources. Format: ISO 4217 currency code. Nullable.
  * `customer` - The ID of the customer to which this source is attached. This will not be present when the source has not been attached to a customer. Max length: 5000.
  * `eps`
  * `flow` - The authentication `flow` of the source. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`. Max length: 5000.
  * `giropay`
  * `id` - Unique identifier for the object. Max length: 5000.
  * `ideal`
  * `klarna`
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Nullable.
  * `multibanco`
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `source`.
  * `owner` - Information about the owner of the payment instrument that may be used or required by particular source types. Nullable. Expandable.
  * `p24`
  * `receiver` - Expandable.
  * `redirect` - Expandable.
  * `sepa_credit_transfer`
  * `sepa_debit`
  * `sofort`
  * `source_order` - Expandable.
  * `statement_descriptor` - Extra information about a source. This will appear on your customer's statement every time you charge the source. Max length: 5000. Nullable.
  * `status` - The status of the source, one of `canceled`, `chargeable`, `consumed`, `failed`, or `pending`. Only `chargeable` sources can be used to create a charge. Max length: 5000.
  * `three_d_secure`
  * `type` - The `type` of the source. The `type` is a payment method, one of `ach_credit_transfer`, `ach_debit`, `alipay`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `multibanco`, `klarna`, `p24`, `sepa_debit`, `sofort`, `three_d_secure`, or `wechat`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https://docs.stripe.com/sources) used. Possible values: `ach_credit_transfer`, `ach_debit`, `acss_debit`, `alipay`, `au_becs_debit`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `klarna`, `multibanco`, `p24`, `sepa_credit_transfer`, `sepa_debit`, `sofort`, `three_d_secure`, `wechat`.
  * `usage` - Either `reusable` or `single_use`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned. Max length: 5000. Nullable.
  * `wechat`
  """
  @type t :: %__MODULE__{
          ach_credit_transfer: map() | nil,
          ach_debit: map() | nil,
          acss_debit: map() | nil,
          alipay: map() | nil,
          allow_redisplay: String.t(),
          amount: integer(),
          au_becs_debit: map() | nil,
          bancontact: map() | nil,
          card: map() | nil,
          card_present: map() | nil,
          client_secret: String.t(),
          code_verification: map() | nil,
          created: integer(),
          currency: String.t(),
          customer: String.t() | nil,
          eps: map() | nil,
          flow: String.t(),
          giropay: map() | nil,
          id: String.t(),
          ideal: map() | nil,
          klarna: map() | nil,
          livemode: boolean(),
          metadata: map(),
          multibanco: map() | nil,
          object: String.t(),
          owner: map(),
          p24: map() | nil,
          receiver: map() | nil,
          redirect: map() | nil,
          sepa_credit_transfer: map() | nil,
          sepa_debit: map() | nil,
          sofort: map() | nil,
          source_order: map() | nil,
          statement_descriptor: String.t(),
          status: String.t(),
          three_d_secure: map() | nil,
          type: String.t(),
          usage: String.t(),
          wechat: map() | nil
        }

  defstruct [
    :ach_credit_transfer,
    :ach_debit,
    :acss_debit,
    :alipay,
    :allow_redisplay,
    :amount,
    :au_becs_debit,
    :bancontact,
    :card,
    :card_present,
    :client_secret,
    :code_verification,
    :created,
    :currency,
    :customer,
    :eps,
    :flow,
    :giropay,
    :id,
    :ideal,
    :klarna,
    :livemode,
    :metadata,
    :multibanco,
    :object,
    :owner,
    :p24,
    :receiver,
    :redirect,
    :sepa_credit_transfer,
    :sepa_debit,
    :sofort,
    :source_order,
    :statement_descriptor,
    :status,
    :three_d_secure,
    :type,
    :usage,
    :wechat
  ]

  @object_name "source"
  def object_name, do: @object_name

  def expandable_fields,
    do: ["code_verification", "owner", "receiver", "redirect", "source_order"]
end
