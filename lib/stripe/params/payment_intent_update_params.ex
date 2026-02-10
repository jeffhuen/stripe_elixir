# File generated from our OpenAPI spec
defmodule Stripe.Params.PaymentIntentUpdateParams do
  @moduledoc "Parameters for payment intent update."

  @typedoc """
  * `amount` - Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
  * `amount_details` - Provides industry-specific information about the amount.
  * `application_fee_amount` - The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  * `capture_method` - Controls when the funds will be captured from the customer's account. Possible values: `automatic`, `automatic_async`, `manual`.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `customer` - ID of the Customer this PaymentIntent belongs to, if one exists.

  Payment methods attached to other Customers cannot be used with this PaymentIntent.

  If [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead. Max length: 5000.
  * `customer_account` - ID of the Account representing the customer that this PaymentIntent belongs to, if one exists.

  Payment methods attached to other Accounts cannot be used with this PaymentIntent.

  If [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Account after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Account instead. Max length: 5000.
  * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 1000.
  * `excluded_payment_method_types` - The list of payment method types to exclude from use with this payment.
  * `expand` - Specifies which fields in the response should be expanded.
  * `hooks` - Automations to be run during the PaymentIntent lifecycle
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `payment_details` - Provides industry-specific information about the charge.
  * `payment_method` - ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://docs.stripe.com/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent. To unset this field to null, pass in an empty string. Max length: 5000.
  * `payment_method_configuration` - The ID of the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) to use with this PaymentIntent. Max length: 100.
  * `payment_method_data` - If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
  in the [payment_method](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-payment_method)
  property on the PaymentIntent.
  * `payment_method_options` - Payment-method-specific configuration for this PaymentIntent.
  * `payment_method_types` - The list of payment method types (for example, card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
  * `receipt_email` - Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
  * `setup_future_usage` - Indicates that you intend to make future payments with this PaymentIntent's payment method.

  If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](https://stripe.com/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](https://docs.stripe.com/api/payment_methods/attach) the payment method to a Customer after the transaction completes.

  If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.

  When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](https://stripe.com/strong-customer-authentication).

  If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`. Possible values: `off_session`, `on_session`.
  * `shipping` - Shipping information for this PaymentIntent.
  * `statement_descriptor` - Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).

  Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead. Max length: 22.
  * `statement_descriptor_suffix` - Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. Max length: 22.
  * `transfer_data` - Use this parameter to automatically create a Transfer when the payment succeeds. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  * `transfer_group` - A string that identifies the resulting payment as part of a group. You can only provide `transfer_group` if it hasn't been set. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          amount_details: map() | nil,
          application_fee_amount: map() | nil,
          capture_method: String.t() | nil,
          currency: String.t() | nil,
          customer: String.t() | nil,
          customer_account: String.t() | nil,
          description: String.t() | nil,
          excluded_payment_method_types: map() | nil,
          expand: [String.t()] | nil,
          hooks: map() | nil,
          metadata: map() | nil,
          payment_details: map() | nil,
          payment_method: String.t() | nil,
          payment_method_configuration: String.t() | nil,
          payment_method_data: map() | nil,
          payment_method_options: map() | nil,
          payment_method_types: [String.t()] | nil,
          receipt_email: map() | nil,
          setup_future_usage: String.t() | nil,
          shipping: map() | nil,
          statement_descriptor: String.t() | nil,
          statement_descriptor_suffix: String.t() | nil,
          transfer_data: map() | nil,
          transfer_group: String.t() | nil
        }

  defstruct [
    :amount,
    :amount_details,
    :application_fee_amount,
    :capture_method,
    :currency,
    :customer,
    :customer_account,
    :description,
    :excluded_payment_method_types,
    :expand,
    :hooks,
    :metadata,
    :payment_details,
    :payment_method,
    :payment_method_configuration,
    :payment_method_data,
    :payment_method_options,
    :payment_method_types,
    :receipt_email,
    :setup_future_usage,
    :shipping,
    :statement_descriptor,
    :statement_descriptor_suffix,
    :transfer_data,
    :transfer_group
  ]

  defmodule Hooks do
    @moduledoc "Nested parameters."

    @typedoc """
    * `inputs` - Arguments passed in automations
    """
    @type t :: %__MODULE__{
            inputs: map() | nil
          }
    defstruct [:inputs]
  end

  defmodule PaymentMethodData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `acss_debit` - If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
    * `affirm` - If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
    * `afterpay_clearpay` - If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
    * `alipay` - If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
    * `allow_redisplay` - This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`. Possible values: `always`, `limited`, `unspecified`.
    * `alma` - If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
    * `amazon_pay` - If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
    * `au_becs_debit` - If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
    * `bacs_debit` - If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
    * `bancontact` - If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
    * `billie` - If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
    * `billing_details` - Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
    * `blik` - If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
    * `boleto` - If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
    * `cashapp` - If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
    * `crypto` - If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
    * `customer_balance` - If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
    * `eps` - If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
    * `fpx` - If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
    * `giropay` - If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
    * `grabpay` - If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
    * `ideal` - If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
    * `interac_present` - If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
    * `kakao_pay` - If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
    * `klarna` - If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
    * `konbini` - If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
    * `kr_card` - If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
    * `link` - If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
    * `mb_way` - If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `mobilepay` - If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
    * `multibanco` - If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
    * `naver_pay` - If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
    * `nz_bank_account` - If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
    * `oxxo` - If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
    * `p24` - If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
    * `pay_by_bank` - If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
    * `payco` - If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
    * `paynow` - If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
    * `paypal` - If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
    * `payto` - If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
    * `pix` - If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
    * `promptpay` - If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
    * `radar_options` - Options to configure Radar. See [Radar Session](https://docs.stripe.com/radar/radar-session) for more information.
    * `revolut_pay` - If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
    * `samsung_pay` - If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
    * `satispay` - If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
    * `sepa_debit` - If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
    * `sofort` - If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
    * `swish` - If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
    * `twint` - If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
    * `type` - The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type. Possible values: `acss_debit`, `affirm`, `afterpay_clearpay`, `alipay`, `alma`, `amazon_pay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `billie`, `blik`, `boleto`, `cashapp`, `crypto`, `customer_balance`, `eps`, `fpx`, `giropay`, `grabpay`, `ideal`, `kakao_pay`, `klarna`, `konbini`, `kr_card`, `link`, `mb_way`, `mobilepay`, `multibanco`, `naver_pay`, `nz_bank_account`, `oxxo`, `p24`, `pay_by_bank`, `payco`, `paynow`, `paypal`, `payto`, `pix`, `promptpay`, `revolut_pay`, `samsung_pay`, `satispay`, `sepa_debit`, `sofort`, `swish`, `twint`, `us_bank_account`, `wechat_pay`, `zip`.
    * `us_bank_account` - If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
    * `wechat_pay` - If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
    * `zip` - If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
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
            billing_details: map() | nil,
            blik: map() | nil,
            boleto: map() | nil,
            cashapp: map() | nil,
            crypto: map() | nil,
            customer_balance: map() | nil,
            eps: map() | nil,
            fpx: map() | nil,
            giropay: map() | nil,
            grabpay: map() | nil,
            ideal: map() | nil,
            interac_present: map() | nil,
            kakao_pay: map() | nil,
            klarna: map() | nil,
            konbini: map() | nil,
            kr_card: map() | nil,
            link: map() | nil,
            mb_way: map() | nil,
            metadata: map() | nil,
            mobilepay: map() | nil,
            multibanco: map() | nil,
            naver_pay: map() | nil,
            nz_bank_account: map() | nil,
            oxxo: map() | nil,
            p24: map() | nil,
            pay_by_bank: map() | nil,
            payco: map() | nil,
            paynow: map() | nil,
            paypal: map() | nil,
            payto: map() | nil,
            pix: map() | nil,
            promptpay: map() | nil,
            radar_options: map() | nil,
            revolut_pay: map() | nil,
            samsung_pay: map() | nil,
            satispay: map() | nil,
            sepa_debit: map() | nil,
            sofort: map() | nil,
            swish: map() | nil,
            twint: map() | nil,
            type: String.t() | nil,
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
      :cashapp,
      :crypto,
      :customer_balance,
      :eps,
      :fpx,
      :giropay,
      :grabpay,
      :ideal,
      :interac_present,
      :kakao_pay,
      :klarna,
      :konbini,
      :kr_card,
      :link,
      :mb_way,
      :metadata,
      :mobilepay,
      :multibanco,
      :naver_pay,
      :nz_bank_account,
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
  end

  defmodule PaymentMethodOptions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `acss_debit` - If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
    * `affirm` - If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
    * `afterpay_clearpay` - If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
    * `alipay` - If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
    * `alma` - If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
    * `amazon_pay` - If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
    * `au_becs_debit` - If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
    * `bacs_debit` - If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
    * `bancontact` - If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
    * `billie` - If this is a `billie` PaymentMethod, this sub-hash contains details about the Billie payment method options.
    * `blik` - If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
    * `boleto` - If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
    * `card` - Configuration for any card payments attempted on this PaymentIntent.
    * `card_present` - If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
    * `cashapp` - If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
    * `crypto` - If this is a `crypto` PaymentMethod, this sub-hash contains details about the Crypto payment method options.
    * `customer_balance` - If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
    * `eps` - If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
    * `fpx` - If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
    * `giropay` - If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
    * `grabpay` - If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
    * `ideal` - If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
    * `interac_present` - If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
    * `kakao_pay` - If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
    * `klarna` - If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
    * `konbini` - If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
    * `kr_card` - If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
    * `link` - If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
    * `mb_way` - If this is a `mb_way` PaymentMethod, this sub-hash contains details about the MB WAY payment method options.
    * `mobilepay` - If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
    * `multibanco` - If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
    * `naver_pay` - If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
    * `nz_bank_account` - If this is a `nz_bank_account` PaymentMethod, this sub-hash contains details about the NZ BECS Direct Debit payment method options.
    * `oxxo` - If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
    * `p24` - If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
    * `pay_by_bank` - If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
    * `payco` - If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
    * `paynow` - If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
    * `paypal` - If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
    * `payto` - If this is a `payto` PaymentMethod, this sub-hash contains details about the PayTo payment method options.
    * `pix` - If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
    * `promptpay` - If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
    * `revolut_pay` - If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
    * `samsung_pay` - If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
    * `satispay` - If this is a `satispay` PaymentMethod, this sub-hash contains details about the Satispay payment method options.
    * `sepa_debit` - If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
    * `sofort` - If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
    * `swish` - If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
    * `twint` - If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
    * `us_bank_account` - If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
    * `wechat_pay` - If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
    * `zip` - If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
    """
    @type t :: %__MODULE__{
            acss_debit: map() | nil,
            affirm: map() | nil,
            afterpay_clearpay: map() | nil,
            alipay: map() | nil,
            alma: map() | nil,
            amazon_pay: map() | nil,
            au_becs_debit: map() | nil,
            bacs_debit: map() | nil,
            bancontact: map() | nil,
            billie: map() | nil,
            blik: map() | nil,
            boleto: map() | nil,
            card: map() | nil,
            card_present: map() | nil,
            cashapp: map() | nil,
            crypto: map() | nil,
            customer_balance: map() | nil,
            eps: map() | nil,
            fpx: map() | nil,
            giropay: map() | nil,
            grabpay: map() | nil,
            ideal: map() | nil,
            interac_present: map() | nil,
            kakao_pay: map() | nil,
            klarna: map() | nil,
            konbini: map() | nil,
            kr_card: map() | nil,
            link: map() | nil,
            mb_way: map() | nil,
            mobilepay: map() | nil,
            multibanco: map() | nil,
            naver_pay: map() | nil,
            nz_bank_account: map() | nil,
            oxxo: map() | nil,
            p24: map() | nil,
            pay_by_bank: map() | nil,
            payco: map() | nil,
            paynow: map() | nil,
            paypal: map() | nil,
            payto: map() | nil,
            pix: map() | nil,
            promptpay: map() | nil,
            revolut_pay: map() | nil,
            samsung_pay: map() | nil,
            satispay: map() | nil,
            sepa_debit: map() | nil,
            sofort: map() | nil,
            swish: map() | nil,
            twint: map() | nil,
            us_bank_account: map() | nil,
            wechat_pay: map() | nil,
            zip: map() | nil
          }
    defstruct [
      :acss_debit,
      :affirm,
      :afterpay_clearpay,
      :alipay,
      :alma,
      :amazon_pay,
      :au_becs_debit,
      :bacs_debit,
      :bancontact,
      :billie,
      :blik,
      :boleto,
      :card,
      :card_present,
      :cashapp,
      :crypto,
      :customer_balance,
      :eps,
      :fpx,
      :giropay,
      :grabpay,
      :ideal,
      :interac_present,
      :kakao_pay,
      :klarna,
      :konbini,
      :kr_card,
      :link,
      :mb_way,
      :mobilepay,
      :multibanco,
      :naver_pay,
      :nz_bank_account,
      :oxxo,
      :p24,
      :pay_by_bank,
      :payco,
      :paynow,
      :paypal,
      :payto,
      :pix,
      :promptpay,
      :revolut_pay,
      :samsung_pay,
      :satispay,
      :sepa_debit,
      :sofort,
      :swish,
      :twint,
      :us_bank_account,
      :wechat_pay,
      :zip
    ]
  end

  defmodule TransferData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `amount` - The amount that will be transferred automatically when a charge succeeds.
    """
    @type t :: %__MODULE__{
            amount: integer() | nil
          }
    defstruct [:amount]
  end
end
