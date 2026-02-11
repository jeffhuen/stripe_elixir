# File generated from our OpenAPI spec
defmodule Stripe.Resources.PaymentMethodConfiguration do
  @moduledoc """
  PaymentMethodConfigResourcePaymentMethodConfiguration

  PaymentMethodConfigurations control which payment methods are displayed to your customers when you don't explicitly specify payment method types. You can have multiple configurations with different sets of payment methods for different scenarios.

  There are two types of PaymentMethodConfigurations. Which is used depends on the [charge type](https://docs.stripe.com/connect/charges):

  **Direct** configurations apply to payments created on your account, including Connect destination charges, Connect separate charges and transfers, and payments not involving Connect.

  **Child** configurations apply to payments created on your connected accounts using direct charges, and charges with the on_behalf_of parameter.

  Child configurations have a `parent` that sets default values and controls which settings connected accounts may override. You can specify a parent ID at payment time, and Stripe will automatically resolve the connected account’s associated child configuration. Parent configurations are [managed in the dashboard](https://dashboard.stripe.com/settings/payment_methods/connected_accounts) and are not available in this API.

  Related guides:
  - [Payment Method Configurations API](https://docs.stripe.com/connect/payment-method-configurations)
  - [Multiple configurations on dynamic payment methods](https://docs.stripe.com/payments/multiple-payment-method-configs)
  - [Multiple configurations for your Connect accounts](https://docs.stripe.com/connect/multiple-payment-method-configurations)
  """

  @typedoc """
  * `acss_debit` - Expandable.
  * `active` - Whether the configuration can be used for new payments.
  * `affirm` - Expandable.
  * `afterpay_clearpay` - Expandable.
  * `alipay` - Expandable.
  * `alma` - Expandable.
  * `amazon_pay` - Expandable.
  * `apple_pay` - Expandable.
  * `application` - For child configs, the Connect application associated with the configuration. Max length: 5000. Nullable.
  * `au_becs_debit` - Expandable.
  * `bacs_debit` - Expandable.
  * `bancontact` - Expandable.
  * `billie` - Expandable.
  * `blik` - Expandable.
  * `boleto` - Expandable.
  * `card` - Expandable.
  * `cartes_bancaires` - Expandable.
  * `cashapp` - Expandable.
  * `crypto` - Expandable.
  * `customer_balance` - Expandable.
  * `eps` - Expandable.
  * `fpx` - Expandable.
  * `giropay` - Expandable.
  * `google_pay` - Expandable.
  * `grabpay` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `ideal` - Expandable.
  * `is_default` - The default configuration is used whenever a payment method configuration is not specified.
  * `jcb` - Expandable.
  * `kakao_pay` - Expandable.
  * `klarna` - Expandable.
  * `konbini` - Expandable.
  * `kr_card` - Expandable.
  * `link` - Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `mb_way` - Expandable.
  * `mobilepay` - Expandable.
  * `multibanco` - Expandable.
  * `name` - The configuration's name. Max length: 5000.
  * `naver_pay` - Expandable.
  * `nz_bank_account` - Expandable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `payment_method_configuration`.
  * `oxxo` - Expandable.
  * `p24` - Expandable.
  * `parent` - For child configs, the configuration's parent configuration. Max length: 5000. Nullable.
  * `pay_by_bank` - Expandable.
  * `payco` - Expandable.
  * `paynow` - Expandable.
  * `paypal` - Expandable.
  * `payto` - Expandable.
  * `pix` - Expandable.
  * `promptpay` - Expandable.
  * `revolut_pay` - Expandable.
  * `samsung_pay` - Expandable.
  * `satispay` - Expandable.
  * `sepa_debit` - Expandable.
  * `sofort` - Expandable.
  * `swish` - Expandable.
  * `twint` - Expandable.
  * `us_bank_account` - Expandable.
  * `wechat_pay` - Expandable.
  * `zip` - Expandable.
  """
  @type t :: %__MODULE__{
          acss_debit: map() | nil,
          active: boolean(),
          affirm: map() | nil,
          afterpay_clearpay: map() | nil,
          alipay: map() | nil,
          alma: map() | nil,
          amazon_pay: map() | nil,
          apple_pay: map() | nil,
          application: String.t(),
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
          fpx: map() | nil,
          giropay: map() | nil,
          google_pay: map() | nil,
          grabpay: map() | nil,
          id: String.t(),
          ideal: map() | nil,
          is_default: boolean(),
          jcb: map() | nil,
          kakao_pay: map() | nil,
          klarna: map() | nil,
          konbini: map() | nil,
          kr_card: map() | nil,
          link: map() | nil,
          livemode: boolean(),
          mb_way: map() | nil,
          mobilepay: map() | nil,
          multibanco: map() | nil,
          name: String.t(),
          naver_pay: map() | nil,
          nz_bank_account: map() | nil,
          object: String.t(),
          oxxo: map() | nil,
          p24: map() | nil,
          parent: String.t(),
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
    :application,
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
    :fpx,
    :giropay,
    :google_pay,
    :grabpay,
    :id,
    :ideal,
    :is_default,
    :jcb,
    :kakao_pay,
    :klarna,
    :konbini,
    :kr_card,
    :link,
    :livemode,
    :mb_way,
    :mobilepay,
    :multibanco,
    :name,
    :naver_pay,
    :nz_bank_account,
    :object,
    :oxxo,
    :p24,
    :parent,
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

  @object_name "payment_method_configuration"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "acss_debit",
      "affirm",
      "afterpay_clearpay",
      "alipay",
      "alma",
      "amazon_pay",
      "apple_pay",
      "au_becs_debit",
      "bacs_debit",
      "bancontact",
      "billie",
      "blik",
      "boleto",
      "card",
      "cartes_bancaires",
      "cashapp",
      "crypto",
      "customer_balance",
      "eps",
      "fpx",
      "giropay",
      "google_pay",
      "grabpay",
      "ideal",
      "jcb",
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

  defmodule AcssDebit do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Affirm do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule AfterpayClearpay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Alipay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Alma do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule AmazonPay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule ApplePay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule AuBecsDebit do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule BacsDebit do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Bancontact do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Billie do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Blik do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Boleto do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Card do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule CartesBancaires do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Cashapp do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Crypto do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule CustomerBalance do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Eps do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Fpx do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Giropay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule GooglePay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Grabpay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Ideal do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Jcb do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule KakaoPay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Klarna do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Konbini do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule KrCard do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Link do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule MbWay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Mobilepay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Multibanco do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule NaverPay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule NzBankAccount do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Oxxo do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule P24 do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule PayByBank do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Payco do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Paynow do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Paypal do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Payto do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Pix do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Promptpay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule RevolutPay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule SamsungPay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Satispay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule SepaDebit do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Sofort do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Swish do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Twint do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule UsBankAccount do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule WechatPay do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  defmodule Zip do
    @moduledoc false

    @typedoc """
    * `available` - Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    * `display_preference`
    """
    @type t :: %__MODULE__{
            available: boolean() | nil,
            display_preference: map() | nil
          }
    defstruct [:available, :display_preference]

    defmodule DisplayPreference do
      @moduledoc false

      @typedoc """
      * `overridable` - For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used. Nullable.
      * `preference` - The account's display preference. Possible values: `none`, `off`, `on`.
      * `value` - The effective display preference value. Possible values: `off`, `on`.
      """
      @type t :: %__MODULE__{
              overridable: boolean() | nil,
              preference: String.t() | nil,
              value: String.t() | nil
            }
      defstruct [:overridable, :preference, :value]
    end

    def __inner_types__ do
      %{
        "display_preference" => __MODULE__.DisplayPreference
      }
    end
  end

  def __inner_types__ do
    %{
      "acss_debit" => __MODULE__.AcssDebit,
      "affirm" => __MODULE__.Affirm,
      "afterpay_clearpay" => __MODULE__.AfterpayClearpay,
      "alipay" => __MODULE__.Alipay,
      "alma" => __MODULE__.Alma,
      "amazon_pay" => __MODULE__.AmazonPay,
      "apple_pay" => __MODULE__.ApplePay,
      "au_becs_debit" => __MODULE__.AuBecsDebit,
      "bacs_debit" => __MODULE__.BacsDebit,
      "bancontact" => __MODULE__.Bancontact,
      "billie" => __MODULE__.Billie,
      "blik" => __MODULE__.Blik,
      "boleto" => __MODULE__.Boleto,
      "card" => __MODULE__.Card,
      "cartes_bancaires" => __MODULE__.CartesBancaires,
      "cashapp" => __MODULE__.Cashapp,
      "crypto" => __MODULE__.Crypto,
      "customer_balance" => __MODULE__.CustomerBalance,
      "eps" => __MODULE__.Eps,
      "fpx" => __MODULE__.Fpx,
      "giropay" => __MODULE__.Giropay,
      "google_pay" => __MODULE__.GooglePay,
      "grabpay" => __MODULE__.Grabpay,
      "ideal" => __MODULE__.Ideal,
      "jcb" => __MODULE__.Jcb,
      "kakao_pay" => __MODULE__.KakaoPay,
      "klarna" => __MODULE__.Klarna,
      "konbini" => __MODULE__.Konbini,
      "kr_card" => __MODULE__.KrCard,
      "link" => __MODULE__.Link,
      "mb_way" => __MODULE__.MbWay,
      "mobilepay" => __MODULE__.Mobilepay,
      "multibanco" => __MODULE__.Multibanco,
      "naver_pay" => __MODULE__.NaverPay,
      "nz_bank_account" => __MODULE__.NzBankAccount,
      "oxxo" => __MODULE__.Oxxo,
      "p24" => __MODULE__.P24,
      "pay_by_bank" => __MODULE__.PayByBank,
      "payco" => __MODULE__.Payco,
      "paynow" => __MODULE__.Paynow,
      "paypal" => __MODULE__.Paypal,
      "payto" => __MODULE__.Payto,
      "pix" => __MODULE__.Pix,
      "promptpay" => __MODULE__.Promptpay,
      "revolut_pay" => __MODULE__.RevolutPay,
      "samsung_pay" => __MODULE__.SamsungPay,
      "satispay" => __MODULE__.Satispay,
      "sepa_debit" => __MODULE__.SepaDebit,
      "sofort" => __MODULE__.Sofort,
      "swish" => __MODULE__.Swish,
      "twint" => __MODULE__.Twint,
      "us_bank_account" => __MODULE__.UsBankAccount,
      "wechat_pay" => __MODULE__.WechatPay,
      "zip" => __MODULE__.Zip
    }
  end
end
