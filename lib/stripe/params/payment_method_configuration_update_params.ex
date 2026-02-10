# File generated from our OpenAPI spec
defmodule Stripe.Params.PaymentMethodConfigurationUpdateParams do
  @moduledoc "Parameters for payment method configuration update."

  @typedoc """
  * `acss_debit` - Canadian pre-authorized debit payments, check this [page](https://docs.stripe.com/payments/acss-debit) for more details like country availability.
  * `active` - Whether the configuration can be used for new payments.
  * `affirm` - [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://docs.stripe.com/payments/affirm) for more details like country availability.
  * `afterpay_clearpay` - Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://docs.stripe.com/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
  * `alipay` - Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://docs.stripe.com/payments/alipay) for more details.
  * `alma` - Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
  * `amazon_pay` - Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
  * `apple_pay` - Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://docs.stripe.com/apple-pay) for more details.
  * `apple_pay_later` - Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
  * `au_becs_debit` - Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://docs.stripe.com/payments/au-becs-debit) for more details.
  * `bacs_debit` - Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://docs.stripe.com/payments/payment-methods/bacs-debit) for more details.
  * `bancontact` - Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://docs.stripe.com/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://docs.stripe.com/payments/bancontact) for more details.
  * `billie` - Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](https://stripe.com/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
  * `blik` - BLIK is a [single use](https://docs.stripe.com/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://docs.stripe.com/payments/blik) for more details.
  * `boleto` - Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://docs.stripe.com/payments/boleto) for more details.
  * `card` - Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
  * `cartes_bancaires` - Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://docs.stripe.com/payments/cartes-bancaires) for more details.
  * `cashapp` - Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://docs.stripe.com/payments/cash-app-pay) for more details.
  * `crypto` - [Stablecoin payments](https://docs.stripe.com/payments/stablecoin-payments) enable customers to pay in stablecoins like USDC from 100s of wallets including Phantom and Metamask.
  * `customer_balance` - Uses a customer’s [cash balance](https://docs.stripe.com/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://docs.stripe.com/payments/bank-transfers) for more details.
  * `eps` - EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://docs.stripe.com/payments/eps) for more details.
  * `expand` - Specifies which fields in the response should be expanded.
  * `fpx` - Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://docs.stripe.com/payments/fpx) for more details.
  * `fr_meal_voucher_conecs` - Meal vouchers in France, or “titres-restaurant”, is a local benefits program commonly offered by employers for their employees to purchase prepared food and beverages on working days. Check this [page](https://docs.stripe.com/payments/meal-vouchers/fr-meal-vouchers) for more details.
  * `giropay` - giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://docs.stripe.com/payments/giropay) for more details.
  * `google_pay` - Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://docs.stripe.com/google-pay) for more details.
  * `grabpay` - GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://docs.stripe.com/payments/grabpay) for more details.
  * `ideal` - iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://docs.stripe.com/payments/ideal) for more details.
  * `jcb` - JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
  * `kakao_pay` - Kakao Pay is a popular local wallet available in South Korea.
  * `klarna` - Klarna gives customers a range of [payment options](https://docs.stripe.com/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://docs.stripe.com/payments/klarna) for more details.
  * `konbini` - Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://docs.stripe.com/payments/konbini) for more details.
  * `kr_card` - Korean cards let users pay using locally issued cards from South Korea.
  * `link` - [Link](https://docs.stripe.com/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
  * `mb_way` - MB WAY is the most popular wallet in Portugal. After entering their phone number in your checkout, customers approve the payment directly in their MB WAY app. Check this [page](https://docs.stripe.com/payments/mb-way) for more details.
  * `mobilepay` - MobilePay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://docs.stripe.com/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://docs.stripe.com/payments/mobilepay) for more details.
  * `multibanco` - Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
  * `name` - Configuration name. Max length: 100.
  * `naver_pay` - Naver Pay is a popular local wallet available in South Korea.
  * `nz_bank_account` - Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://docs.stripe.com/payments/nz-bank-account) for more details.
  * `oxxo` - OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://docs.stripe.com/payments/oxxo) for more details.
  * `p24` - Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://docs.stripe.com/payments/p24) for more details.
  * `pay_by_bank` - Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
  * `payco` - PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
  * `paynow` - PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://docs.stripe.com/payments/paynow) for more details.
  * `paypal` - PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://docs.stripe.com/payments/paypal) for more details.
  * `payto` - PayTo is a [real-time](https://docs.stripe.com/payments/real-time) payment method that enables customers in Australia to pay by providing their bank account details. Customers must accept a mandate authorizing you to debit their account. Check this [page](https://docs.stripe.com/payments/payto) for more details.
  * `pix` - Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
  * `promptpay` - PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://docs.stripe.com/payments/promptpay) for more details.
  * `revolut_pay` - Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
  * `samsung_pay` - Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
  * `satispay` - Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](https://stripe.com/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](https://stripe.com/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
  * `sepa_debit` - The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://docs.stripe.com/payments/sepa-debit) for more details.
  * `sofort` - Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://docs.stripe.com/payments/sofort) for more details.
  * `swish` - Swish is a [real-time](https://docs.stripe.com/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://docs.stripe.com/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://docs.stripe.com/payments/swish) for more details.
  * `twint` - Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
  * `us_bank_account` - Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://docs.stripe.com/payments/ach-direct-debit) for more details.
  * `wechat_pay` - WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://docs.stripe.com/payments/wechat-pay) for more details.
  * `zip` - Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://docs.stripe.com/payments/zip) for more details like country availability.
  """
  @type t :: %__MODULE__{
          acss_debit: map() | nil,
          active: boolean() | nil,
          affirm: map() | nil,
          afterpay_clearpay: map() | nil,
          alipay: map() | nil,
          alma: map() | nil,
          amazon_pay: map() | nil,
          apple_pay: map() | nil,
          apple_pay_later: map() | nil,
          au_becs_debit: map() | nil,
          bacs_debit: map() | nil,
          bancontact: map() | nil,
          billie: map() | nil,
          blik: map() | nil,
          boleto: map() | nil,
          card: map() | nil,
          cartes_bancaires: map() | nil,
          cashapp: map() | nil,
          crypto: map() | nil,
          customer_balance: map() | nil,
          eps: map() | nil,
          expand: [String.t()] | nil,
          fpx: map() | nil,
          fr_meal_voucher_conecs: map() | nil,
          giropay: map() | nil,
          google_pay: map() | nil,
          grabpay: map() | nil,
          ideal: map() | nil,
          jcb: map() | nil,
          kakao_pay: map() | nil,
          klarna: map() | nil,
          konbini: map() | nil,
          kr_card: map() | nil,
          link: map() | nil,
          mb_way: map() | nil,
          mobilepay: map() | nil,
          multibanco: map() | nil,
          name: String.t() | nil,
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
    :active,
    :affirm,
    :afterpay_clearpay,
    :alipay,
    :alma,
    :amazon_pay,
    :apple_pay,
    :apple_pay_later,
    :au_becs_debit,
    :bacs_debit,
    :bancontact,
    :billie,
    :blik,
    :boleto,
    :card,
    :cartes_bancaires,
    :cashapp,
    :crypto,
    :customer_balance,
    :eps,
    :expand,
    :fpx,
    :fr_meal_voucher_conecs,
    :giropay,
    :google_pay,
    :grabpay,
    :ideal,
    :jcb,
    :kakao_pay,
    :klarna,
    :konbini,
    :kr_card,
    :link,
    :mb_way,
    :mobilepay,
    :multibanco,
    :name,
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

  defmodule AcssDebit do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Affirm do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule AfterpayClearpay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Alipay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Alma do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule AmazonPay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule ApplePay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule ApplePayLater do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule AuBecsDebit do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule BacsDebit do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Bancontact do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Billie do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Blik do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Boleto do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Card do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule CartesBancaires do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Cashapp do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Crypto do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule CustomerBalance do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Eps do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Fpx do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule FrMealVoucherConecs do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Giropay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule GooglePay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Grabpay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Ideal do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Jcb do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule KakaoPay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Klarna do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Konbini do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule KrCard do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Link do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule MbWay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Mobilepay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Multibanco do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule NaverPay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule NzBankAccount do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Oxxo do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule P24 do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule PayByBank do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Payco do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Paynow do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Paypal do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Payto do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Pix do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Promptpay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule RevolutPay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule SamsungPay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Satispay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule SepaDebit do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Sofort do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Swish do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Twint do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule UsBankAccount do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule WechatPay do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end

  defmodule Zip do
    @moduledoc "Nested parameters."

    @typedoc """
    * `display_preference` - Whether or not the payment method should be displayed.
    """
    @type t :: %__MODULE__{
            display_preference: map() | nil
          }
    defstruct [:display_preference]
  end
end
