# File generated from our OpenAPI spec
defmodule Stripe.Resources.Mandate do
  @moduledoc """
  Mandate

  A Mandate is a record of the permission that your customer gives you to debit their payment method.
  """

  @typedoc """
  * `customer_acceptance` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `multi_use` - Expandable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `mandate`.
  * `on_behalf_of` - The account (if any) that the mandate is intended for. Max length: 5000.
  * `payment_method` - ID of the payment method associated with this mandate. Expandable.
  * `payment_method_details` - Expandable.
  * `single_use` - Expandable.
  * `status` - The mandate status indicates whether or not you can use it to initiate a payment. Possible values: `active`, `inactive`, `pending`.
  * `type` - The type of the mandate. Possible values: `multi_use`, `single_use`.
  """
  @type t :: %__MODULE__{
          customer_acceptance: map(),
          id: String.t(),
          livemode: boolean(),
          multi_use: map() | nil,
          object: String.t(),
          on_behalf_of: String.t() | nil,
          payment_method: String.t() | map(),
          payment_method_details: map(),
          single_use: map() | nil,
          status: String.t(),
          type: String.t()
        }

  defstruct [
    :customer_acceptance,
    :id,
    :livemode,
    :multi_use,
    :object,
    :on_behalf_of,
    :payment_method,
    :payment_method_details,
    :single_use,
    :status,
    :type
  ]

  @object_name "mandate"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "customer_acceptance",
      "multi_use",
      "payment_method",
      "payment_method_details",
      "single_use"
    ]

  defmodule CustomerAcceptance do
    @moduledoc false

    @typedoc """
    * `accepted_at` - The time that the customer accepts the mandate. Format: Unix timestamp. Nullable.
    * `offline`
    * `online`
    * `type` - The mandate includes the type of customer acceptance information, such as: `online` or `offline`. Possible values: `offline`, `online`.
    """
    @type t :: %__MODULE__{
            accepted_at: integer() | nil,
            offline: map() | nil,
            online: map() | nil,
            type: String.t() | nil
          }
    defstruct [:accepted_at, :offline, :online, :type]

    defmodule Online do
      @moduledoc false

      @typedoc """
      * `ip_address` - The customer accepts the mandate from this IP address. Max length: 5000. Nullable.
      * `user_agent` - The customer accepts the mandate using the user agent of the browser. Max length: 5000. Nullable.
      """
      @type t :: %__MODULE__{
              ip_address: String.t() | nil,
              user_agent: String.t() | nil
            }
      defstruct [:ip_address, :user_agent]
    end

    def __inner_types__ do
      %{
        "online" => __MODULE__.Online
      }
    end
  end

  defmodule PaymentMethodDetails do
    @moduledoc false

    @typedoc """
    * `acss_debit`
    * `amazon_pay`
    * `au_becs_debit`
    * `bacs_debit`
    * `card`
    * `cashapp`
    * `kakao_pay`
    * `klarna`
    * `kr_card`
    * `link`
    * `naver_pay`
    * `nz_bank_account`
    * `paypal`
    * `payto`
    * `revolut_pay`
    * `sepa_debit`
    * `type` - This mandate corresponds with a specific payment method type. The `payment_method_details` includes an additional hash with the same name and contains mandate information that's specific to that payment method. Max length: 5000.
    * `us_bank_account`
    """
    @type t :: %__MODULE__{
            acss_debit: map() | nil,
            amazon_pay: map() | nil,
            au_becs_debit: map() | nil,
            bacs_debit: map() | nil,
            card: map() | nil,
            cashapp: map() | nil,
            kakao_pay: map() | nil,
            klarna: map() | nil,
            kr_card: map() | nil,
            link: map() | nil,
            naver_pay: map() | nil,
            nz_bank_account: map() | nil,
            paypal: map() | nil,
            payto: map() | nil,
            revolut_pay: map() | nil,
            sepa_debit: map() | nil,
            type: String.t() | nil,
            us_bank_account: map() | nil
          }
    defstruct [
      :acss_debit,
      :amazon_pay,
      :au_becs_debit,
      :bacs_debit,
      :card,
      :cashapp,
      :kakao_pay,
      :klarna,
      :kr_card,
      :link,
      :naver_pay,
      :nz_bank_account,
      :paypal,
      :payto,
      :revolut_pay,
      :sepa_debit,
      :type,
      :us_bank_account
    ]

    defmodule AuBecsDebit do
      @moduledoc false

      @typedoc """
      * `url` - The URL of the mandate. This URL generally contains sensitive information about the customer and should be shared with them exclusively. Max length: 5000.
      """
      @type t :: %__MODULE__{
              url: String.t() | nil
            }
      defstruct [:url]
    end

    defmodule BacsDebit do
      @moduledoc false

      @typedoc """
      * `network_status` - The status of the mandate on the Bacs network. Can be one of `pending`, `revoked`, `refused`, or `accepted`. Possible values: `accepted`, `pending`, `refused`, `revoked`.
      * `reference` - The unique reference identifying the mandate on the Bacs network. Max length: 5000.
      * `revocation_reason` - When the mandate is revoked on the Bacs network this field displays the reason for the revocation. Possible values: `account_closed`, `bank_account_restricted`, `bank_ownership_changed`, `could_not_process`, `debit_not_authorized`. Nullable.
      * `url` - The URL that will contain the mandate that the customer has signed. Max length: 5000.
      """
      @type t :: %__MODULE__{
              network_status: String.t() | nil,
              reference: String.t() | nil,
              revocation_reason: String.t() | nil,
              url: String.t() | nil
            }
      defstruct [:network_status, :reference, :revocation_reason, :url]
    end

    defmodule Paypal do
      @moduledoc false

      @typedoc """
      * `billing_agreement_id` - The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer. Max length: 5000. Nullable.
      * `payer_id` - PayPal account PayerID. This identifier uniquely identifies the PayPal customer. Max length: 5000. Nullable.
      """
      @type t :: %__MODULE__{
              billing_agreement_id: String.t() | nil,
              payer_id: String.t() | nil
            }
      defstruct [:billing_agreement_id, :payer_id]
    end

    def __inner_types__ do
      %{
        "au_becs_debit" => __MODULE__.AuBecsDebit,
        "bacs_debit" => __MODULE__.BacsDebit,
        "paypal" => __MODULE__.Paypal
      }
    end
  end

  defmodule SingleUse do
    @moduledoc false

    @typedoc """
    * `amount` - The amount of the payment on a single use mandate.
    * `currency` - The currency of the payment on a single use mandate. Format: ISO 4217 currency code.
    """
    @type t :: %__MODULE__{
            amount: integer() | nil,
            currency: String.t() | nil
          }
    defstruct [:amount, :currency]
  end

  def __inner_types__ do
    %{
      "customer_acceptance" => __MODULE__.CustomerAcceptance,
      "payment_method_details" => __MODULE__.PaymentMethodDetails,
      "single_use" => __MODULE__.SingleUse
    }
  end
end
