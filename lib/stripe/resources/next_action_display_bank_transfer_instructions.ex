# File generated from our OpenAPI spec
defmodule Stripe.Resources.NextActionDisplayBankTransferInstructions do
  @moduledoc """
  PaymentIntentNextActionDisplayBankTransferInstructions
  """

  @typedoc """
  * `amount_remaining` - The remaining amount that needs to be transferred to complete the payment. Nullable.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code. Nullable.
  * `financial_addresses` - A list of financial addresses that can be used to fund the customer balance Expandable.
  * `hosted_instructions_url` - A link to a hosted page that guides your customer through completing the transfer. Max length: 5000. Nullable.
  * `reference` - A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer. Max length: 5000. Nullable.
  * `type` - Type of bank transfer Possible values: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, `us_bank_transfer`.
  """
  @type t :: %__MODULE__{
          amount_remaining: integer(),
          currency: String.t(),
          financial_addresses: [map()] | nil,
          hosted_instructions_url: String.t(),
          reference: String.t(),
          type: String.t()
        }

  defstruct [
    :amount_remaining,
    :currency,
    :financial_addresses,
    :hosted_instructions_url,
    :reference,
    :type
  ]

  @object_name "payment_intent_next_action_display_bank_transfer_instructions"
  def object_name, do: @object_name

  def expandable_fields, do: ["financial_addresses"]

  defmodule FinancialAddresses do
    @moduledoc false

    @typedoc """
    * `aba`
    * `iban`
    * `sort_code`
    * `spei`
    * `supported_networks` - The payment networks supported by this FinancialAddress
    * `swift`
    * `type` - The type of financial address Possible values: `aba`, `iban`, `sort_code`, `spei`, `swift`, `zengin`.
    * `zengin`
    """
    @type t :: %__MODULE__{
            aba: map() | nil,
            iban: map() | nil,
            sort_code: map() | nil,
            spei: map() | nil,
            supported_networks: [String.t()] | nil,
            swift: map() | nil,
            type: String.t() | nil,
            zengin: map() | nil
          }
    defstruct [:aba, :iban, :sort_code, :spei, :supported_networks, :swift, :type, :zengin]

    defmodule Iban do
      @moduledoc false

      @typedoc """
      * `account_holder_address`
      * `account_holder_name` - The name of the person or business that owns the bank account Max length: 5000.
      * `bank_address`
      * `bic` - The BIC/SWIFT code of the account. Max length: 5000.
      * `country` - Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)). Max length: 5000.
      * `iban` - The IBAN of the account. Max length: 5000.
      """
      @type t :: %__MODULE__{
              account_holder_address: map() | nil,
              account_holder_name: String.t() | nil,
              bank_address: map() | nil,
              bic: String.t() | nil,
              country: String.t() | nil,
              iban: String.t() | nil
            }
      defstruct [
        :account_holder_address,
        :account_holder_name,
        :bank_address,
        :bic,
        :country,
        :iban
      ]
    end

    defmodule Spei do
      @moduledoc false

      @typedoc """
      * `account_holder_address`
      * `account_holder_name` - The account holder name Max length: 5000.
      * `bank_address`
      * `bank_code` - The three-digit bank code Max length: 5000.
      * `bank_name` - The short banking institution name Max length: 5000.
      * `clabe` - The CLABE number Max length: 5000.
      """
      @type t :: %__MODULE__{
              account_holder_address: map() | nil,
              account_holder_name: String.t() | nil,
              bank_address: map() | nil,
              bank_code: String.t() | nil,
              bank_name: String.t() | nil,
              clabe: String.t() | nil
            }
      defstruct [
        :account_holder_address,
        :account_holder_name,
        :bank_address,
        :bank_code,
        :bank_name,
        :clabe
      ]
    end

    defmodule Swift do
      @moduledoc false

      @typedoc """
      * `account_holder_address`
      * `account_holder_name` - The account holder name Max length: 5000.
      * `account_number` - The account number Max length: 5000.
      * `account_type` - The account type Max length: 5000.
      * `bank_address`
      * `bank_name` - The bank name Max length: 5000.
      * `swift_code` - The SWIFT code Max length: 5000.
      """
      @type t :: %__MODULE__{
              account_holder_address: map() | nil,
              account_holder_name: String.t() | nil,
              account_number: String.t() | nil,
              account_type: String.t() | nil,
              bank_address: map() | nil,
              bank_name: String.t() | nil,
              swift_code: String.t() | nil
            }
      defstruct [
        :account_holder_address,
        :account_holder_name,
        :account_number,
        :account_type,
        :bank_address,
        :bank_name,
        :swift_code
      ]
    end

    defmodule Zengin do
      @moduledoc false

      @typedoc """
      * `account_holder_address`
      * `account_holder_name` - The account holder name Max length: 5000. Nullable.
      * `account_number` - The account number Max length: 5000. Nullable.
      * `account_type` - The bank account type. In Japan, this can only be `futsu` or `toza`. Max length: 5000. Nullable.
      * `bank_address`
      * `bank_code` - The bank code of the account Max length: 5000. Nullable.
      * `bank_name` - The bank name of the account Max length: 5000. Nullable.
      * `branch_code` - The branch code of the account Max length: 5000. Nullable.
      * `branch_name` - The branch name of the account Max length: 5000. Nullable.
      """
      @type t :: %__MODULE__{
              account_holder_address: map() | nil,
              account_holder_name: String.t() | nil,
              account_number: String.t() | nil,
              account_type: String.t() | nil,
              bank_address: map() | nil,
              bank_code: String.t() | nil,
              bank_name: String.t() | nil,
              branch_code: String.t() | nil,
              branch_name: String.t() | nil
            }
      defstruct [
        :account_holder_address,
        :account_holder_name,
        :account_number,
        :account_type,
        :bank_address,
        :bank_code,
        :bank_name,
        :branch_code,
        :branch_name
      ]
    end

    def __inner_types__ do
      %{
        "iban" => __MODULE__.Iban,
        "spei" => __MODULE__.Spei,
        "swift" => __MODULE__.Swift,
        "zengin" => __MODULE__.Zengin
      }
    end
  end

  def __inner_types__ do
    %{
      "financial_addresses" => __MODULE__.FinancialAddresses
    }
  end
end
