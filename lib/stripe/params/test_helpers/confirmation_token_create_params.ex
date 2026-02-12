# File generated from our OpenAPI spec
defmodule Stripe.Params.TestHelpers.ConfirmationTokenCreateParams do
  @moduledoc "Parameters for confirmation token create."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `payment_method` - ID of an existing PaymentMethod. Max length: 5000.
  * `payment_method_data` - If provided, this hash will be used to create a PaymentMethod.
  * `payment_method_options` - Payment-method-specific configuration for this ConfirmationToken.
  * `return_url` - Return URL used to confirm the Intent.
  * `setup_future_usage` - Indicates that you intend to make future payments with this ConfirmationToken's payment method.

  The presence of this property will [attach the payment method](https://docs.stripe.com/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. Possible values: `off_session`, `on_session`.
  * `shipping` - Shipping information for this ConfirmationToken.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          payment_method: String.t() | nil,
          payment_method_data: __MODULE__.PaymentMethodData.t() | nil,
          payment_method_options: __MODULE__.PaymentMethodOptions.t() | nil,
          return_url: String.t() | nil,
          setup_future_usage: String.t() | nil,
          shipping: __MODULE__.Shipping.t() | nil
        }

  defstruct [
    :expand,
    :payment_method,
    :payment_method_data,
    :payment_method_options,
    :return_url,
    :setup_future_usage,
    :shipping
  ]

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
    * `card` - Configuration for any card payments confirmed using this ConfirmationToken.
    """
    @type t :: %__MODULE__{
            card: __MODULE__.Card.t() | nil
          }
    defstruct [:card]
  end

  defmodule Shipping do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - Shipping address
    * `name` - Recipient name. Max length: 5000.
    * `phone` - Recipient phone (including extension)
    """
    @type t :: %__MODULE__{
            address: __MODULE__.Address.t() | nil,
            name: String.t() | nil,
            phone: map() | nil
          }
    defstruct [:address, :name, :phone]
  end
end
