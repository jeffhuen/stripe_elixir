# File generated from our OpenAPI spec
defmodule Stripe.Params.PaymentIntentConfirmParams do
  @moduledoc "Parameters for payment intent confirm."

  @typedoc """
  * `amount_details` - Provides industry-specific information about the amount.
  * `capture_method` - Controls when the funds will be captured from the customer's account. Possible values: `automatic`, `automatic_async`, `manual`.
  * `confirmation_token` - ID of the ConfirmationToken used to confirm this PaymentIntent.

  If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence. Max length: 5000.
  * `error_on_requires_action` - Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https://docs.stripe.com/payments/save-card-without-authentication).
  * `excluded_payment_method_types` - The list of payment method types to exclude from use with this payment.
  * `expand` - Specifies which fields in the response should be expanded.
  * `hooks` - Automations to be run during the PaymentIntent lifecycle
  * `mandate` - ID of the mandate that's used for this payment. Max length: 5000.
  * `mandate_data`
  * `off_session` - Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://docs.stripe.com/payments/cards/charging-saved-cards).
  * `payment_details` - Provides industry-specific information about the charge.
  * `payment_method` - ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://docs.stripe.com/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.
  If the payment method is attached to a Customer, it must match the [customer](https://api.stripe.com#create_payment_intent-customer) that is set on this PaymentIntent. Max length: 5000.
  * `payment_method_data` - If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
  in the [payment_method](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-payment_method)
  property on the PaymentIntent.
  * `payment_method_options` - Payment method-specific configuration for this PaymentIntent.
  * `payment_method_types` - The list of payment method types (for example, a card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
  * `radar_options` - Options to configure Radar. Learn more about [Radar Sessions](https://docs.stripe.com/radar/radar-session).
  * `receipt_email` - Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
  * `return_url` - The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.
  If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
  This parameter is only used for cards and other redirect-based payment methods.
  * `setup_future_usage` - Indicates that you intend to make future payments with this PaymentIntent's payment method.

  If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](https://stripe.com/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](https://docs.stripe.com/api/payment_methods/attach) the payment method to a Customer after the transaction completes.

  If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.

  When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](https://stripe.com/strong-customer-authentication).

  If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`. Possible values: `off_session`, `on_session`.
  * `shipping` - Shipping information for this PaymentIntent.
  * `use_stripe_sdk` - Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
  """
  @type t :: %__MODULE__{
          amount_details: map() | nil,
          capture_method: String.t() | nil,
          confirmation_token: String.t() | nil,
          error_on_requires_action: boolean() | nil,
          excluded_payment_method_types: map() | nil,
          expand: [String.t()] | nil,
          hooks: __MODULE__.Hooks.t() | nil,
          mandate: String.t() | nil,
          mandate_data: map() | nil,
          off_session: map() | nil,
          payment_details: map() | nil,
          payment_method: String.t() | nil,
          payment_method_data: __MODULE__.PaymentMethodData.t() | nil,
          payment_method_options: __MODULE__.PaymentMethodOptions.t() | nil,
          payment_method_types: [String.t()] | nil,
          radar_options: __MODULE__.RadarOptions.t() | nil,
          receipt_email: map() | nil,
          return_url: String.t() | nil,
          setup_future_usage: String.t() | nil,
          shipping: map() | nil,
          use_stripe_sdk: boolean() | nil
        }

  defstruct [
    :amount_details,
    :capture_method,
    :confirmation_token,
    :error_on_requires_action,
    :excluded_payment_method_types,
    :expand,
    :hooks,
    :mandate,
    :mandate_data,
    :off_session,
    :payment_details,
    :payment_method,
    :payment_method_data,
    :payment_method_options,
    :payment_method_types,
    :radar_options,
    :receipt_email,
    :return_url,
    :setup_future_usage,
    :shipping,
    :use_stripe_sdk
  ]

  defmodule Hooks do
    @moduledoc "Nested parameters."

    @typedoc """
    * `inputs` - Arguments passed in automations
    """
    @type t :: %__MODULE__{
            inputs: __MODULE__.Inputs.t() | nil
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
            acss_debit: __MODULE__.AcssDebit.t() | nil,
            affirm: map() | nil,
            afterpay_clearpay: map() | nil,
            alipay: map() | nil,
            allow_redisplay: String.t() | nil,
            alma: map() | nil,
            amazon_pay: map() | nil,
            au_becs_debit: __MODULE__.AuBecsDebit.t() | nil,
            bacs_debit: __MODULE__.BacsDebit.t() | nil,
            bancontact: map() | nil,
            billie: map() | nil,
            billing_details: __MODULE__.BillingDetails.t() | nil,
            blik: map() | nil,
            boleto: __MODULE__.Boleto.t() | nil,
            cashapp: map() | nil,
            crypto: map() | nil,
            customer_balance: map() | nil,
            eps: __MODULE__.Eps.t() | nil,
            fpx: __MODULE__.Fpx.t() | nil,
            giropay: map() | nil,
            grabpay: map() | nil,
            ideal: __MODULE__.Ideal.t() | nil,
            interac_present: map() | nil,
            kakao_pay: map() | nil,
            klarna: __MODULE__.Klarna.t() | nil,
            konbini: map() | nil,
            kr_card: map() | nil,
            link: map() | nil,
            mb_way: map() | nil,
            metadata: %{String.t() => String.t()} | nil,
            mobilepay: map() | nil,
            multibanco: map() | nil,
            naver_pay: __MODULE__.NaverPay.t() | nil,
            nz_bank_account: __MODULE__.NzBankAccount.t() | nil,
            oxxo: map() | nil,
            p24: __MODULE__.P24.t() | nil,
            pay_by_bank: map() | nil,
            payco: map() | nil,
            paynow: map() | nil,
            paypal: map() | nil,
            payto: __MODULE__.Payto.t() | nil,
            pix: map() | nil,
            promptpay: map() | nil,
            radar_options: __MODULE__.RadarOptions.t() | nil,
            revolut_pay: map() | nil,
            samsung_pay: map() | nil,
            satispay: map() | nil,
            sepa_debit: __MODULE__.SepaDebit.t() | nil,
            sofort: __MODULE__.Sofort.t() | nil,
            swish: map() | nil,
            twint: map() | nil,
            type: String.t() | nil,
            us_bank_account: __MODULE__.UsBankAccount.t() | nil,
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

  defmodule RadarOptions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `session` - A [Radar Session](https://docs.stripe.com/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments. Max length: 5000.
    """
    @type t :: %__MODULE__{
            session: String.t() | nil
          }
    defstruct [:session]
  end
end
