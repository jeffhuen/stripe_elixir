# File generated from our OpenAPI spec
defmodule Stripe.Resources.PaymentMethod do
  @moduledoc """
  PaymentMethod

  PaymentMethod objects represent your customer's payment instruments.
  You can use them with [PaymentIntents](https://docs.stripe.com/payments/payment-intents) to collect payments or save them to
  Customer objects to store instrument details for future payments.

  Related guides: [Payment Methods](https://docs.stripe.com/payments/payment-methods) and [More Payment Scenarios](https://docs.stripe.com/payments/more-payment-scenarios).
  """

  @typedoc """
  * `acss_debit` - Expandable.
  * `affirm` - Expandable.
  * `afterpay_clearpay` - Expandable.
  * `alipay` - Expandable.
  * `allow_redisplay` - This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”. Possible values: `always`, `limited`, `unspecified`.
  * `alma` - Expandable.
  * `amazon_pay` - Expandable.
  * `au_becs_debit` - Expandable.
  * `bacs_debit` - Expandable.
  * `bancontact` - Expandable.
  * `billie` - Expandable.
  * `billing_details` - Expandable.
  * `blik` - Expandable.
  * `boleto` - Expandable.
  * `card` - Expandable.
  * `card_present` - Expandable.
  * `cashapp` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `crypto` - Expandable.
  * `custom` - Expandable.
  * `customer` - The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer. Nullable. Expandable.
  * `customer_account` - Max length: 5000. Nullable.
  * `customer_balance` - Expandable.
  * `eps` - Expandable.
  * `fpx` - Expandable.
  * `giropay` - Expandable.
  * `grabpay` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `ideal` - Expandable.
  * `interac_present` - Expandable.
  * `kakao_pay` - Expandable.
  * `klarna` - Expandable.
  * `konbini` - Expandable.
  * `kr_card` - Expandable.
  * `link` - Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `mb_way` - Expandable.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Nullable.
  * `mobilepay` - Expandable.
  * `multibanco` - Expandable.
  * `naver_pay` - Expandable.
  * `nz_bank_account` - Expandable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `payment_method`.
  * `oxxo` - Expandable.
  * `p24` - Expandable.
  * `pay_by_bank` - Expandable.
  * `payco` - Expandable.
  * `paynow` - Expandable.
  * `paypal` - Expandable.
  * `payto` - Expandable.
  * `pix` - Expandable.
  * `promptpay` - Expandable.
  * `radar_options` - Expandable.
  * `revolut_pay` - Expandable.
  * `samsung_pay` - Expandable.
  * `satispay` - Expandable.
  * `sepa_debit` - Expandable.
  * `sofort` - Expandable.
  * `swish` - Expandable.
  * `twint` - Expandable.
  * `type` - The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type. Possible values: `acss_debit`, `affirm`, `afterpay_clearpay`, `alipay`, `alma`, `amazon_pay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `billie`, `blik`, `boleto`, `card`, `card_present`, `cashapp`, `crypto`, `custom`, `customer_balance`, `eps`, `fpx`, `giropay`, `grabpay`, `ideal`, `interac_present`, `kakao_pay`, `klarna`, `konbini`, `kr_card`, `link`, `mb_way`, `mobilepay`, `multibanco`, `naver_pay`, `nz_bank_account`, `oxxo`, `p24`, `pay_by_bank`, `payco`, `paynow`, `paypal`, `payto`, `pix`, `promptpay`, `revolut_pay`, `samsung_pay`, `satispay`, `sepa_debit`, `sofort`, `swish`, `twint`, `us_bank_account`, `wechat_pay`, `zip`.
  * `us_bank_account` - Expandable.
  * `wechat_pay` - Expandable.
  * `zip` - Expandable.
  """
  @type t :: %__MODULE__{
          acss_debit: map() | nil,
          affirm: map() | nil,
          afterpay_clearpay: map() | nil,
          alipay: map() | nil,
          allow_redisplay: String.t() | nil,
          alma: map() | nil,
          amazon_pay: map() | nil,
          au_becs_debit: map() | nil,
          bacs_debit: map() | nil,
          bancontact: map() | nil,
          billie: map() | nil,
          billing_details: map(),
          blik: map() | nil,
          boleto: map() | nil,
          card: map() | nil,
          card_present: map() | nil,
          cashapp: map() | nil,
          created: integer(),
          crypto: String.t() | map() | nil,
          custom: String.t() | map() | nil,
          customer: String.t() | map(),
          customer_account: String.t(),
          customer_balance: map() | nil,
          eps: map() | nil,
          fpx: map() | nil,
          giropay: map() | nil,
          grabpay: map() | nil,
          id: String.t(),
          ideal: map() | nil,
          interac_present: map() | nil,
          kakao_pay: String.t() | map() | nil,
          klarna: map() | nil,
          konbini: map() | nil,
          kr_card: String.t() | map() | nil,
          link: map() | nil,
          livemode: boolean(),
          mb_way: String.t() | map() | nil,
          metadata: map(),
          mobilepay: map() | nil,
          multibanco: map() | nil,
          naver_pay: String.t() | map() | nil,
          nz_bank_account: map() | nil,
          object: String.t(),
          oxxo: map() | nil,
          p24: map() | nil,
          pay_by_bank: map() | nil,
          payco: String.t() | map() | nil,
          paynow: map() | nil,
          paypal: map() | nil,
          payto: map() | nil,
          pix: map() | nil,
          promptpay: map() | nil,
          radar_options: map() | nil,
          revolut_pay: map() | nil,
          samsung_pay: String.t() | map() | nil,
          satispay: map() | nil,
          sepa_debit: map() | nil,
          sofort: map() | nil,
          swish: map() | nil,
          twint: map() | nil,
          type: String.t(),
          us_bank_account: map() | nil,
          wechat_pay: map() | nil,
          zip: map() | nil
        }

  defstruct [
    :acss_debit,
    :affirm,
    :afterpay_clearpay,
    :alipay,
    :allow_redisplay,
    :alma,
    :amazon_pay,
    :au_becs_debit,
    :bacs_debit,
    :bancontact,
    :billie,
    :billing_details,
    :blik,
    :boleto,
    :card,
    :card_present,
    :cashapp,
    :created,
    :crypto,
    :custom,
    :customer,
    :customer_account,
    :customer_balance,
    :eps,
    :fpx,
    :giropay,
    :grabpay,
    :id,
    :ideal,
    :interac_present,
    :kakao_pay,
    :klarna,
    :konbini,
    :kr_card,
    :link,
    :livemode,
    :mb_way,
    :metadata,
    :mobilepay,
    :multibanco,
    :naver_pay,
    :nz_bank_account,
    :object,
    :oxxo,
    :p24,
    :pay_by_bank,
    :payco,
    :paynow,
    :paypal,
    :payto,
    :pix,
    :promptpay,
    :radar_options,
    :revolut_pay,
    :samsung_pay,
    :satispay,
    :sepa_debit,
    :sofort,
    :swish,
    :twint,
    :type,
    :us_bank_account,
    :wechat_pay,
    :zip
  ]

  @object_name "payment_method"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "acss_debit",
      "affirm",
      "afterpay_clearpay",
      "alipay",
      "alma",
      "amazon_pay",
      "au_becs_debit",
      "bacs_debit",
      "bancontact",
      "billie",
      "billing_details",
      "blik",
      "boleto",
      "card",
      "card_present",
      "cashapp",
      "crypto",
      "custom",
      "customer",
      "customer_balance",
      "eps",
      "fpx",
      "giropay",
      "grabpay",
      "ideal",
      "interac_present",
      "kakao_pay",
      "klarna",
      "konbini",
      "kr_card",
      "link",
      "mb_way",
      "mobilepay",
      "multibanco",
      "naver_pay",
      "nz_bank_account",
      "oxxo",
      "p24",
      "pay_by_bank",
      "payco",
      "paynow",
      "paypal",
      "payto",
      "pix",
      "promptpay",
      "radar_options",
      "revolut_pay",
      "samsung_pay",
      "satispay",
      "sepa_debit",
      "sofort",
      "swish",
      "twint",
      "us_bank_account",
      "wechat_pay",
      "zip"
    ]
end
