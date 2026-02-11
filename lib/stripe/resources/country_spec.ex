# File generated from our OpenAPI spec
defmodule Stripe.Resources.CountrySpec do
  @moduledoc """
  CountrySpec

  Stripe needs to collect certain pieces of information about each account
  created. These requirements can differ depending on the account's country. The
  Country Specs API makes these rules available to your integration.

  You can also view the information from this API call as [an online
  guide](https://docs.stripe.com/docs/connect/required-verification-information).
  """

  @typedoc """
  * `default_currency` - The default currency for this country. This applies to both payment methods and bank accounts. Max length: 5000.
  * `id` - Unique identifier for the object. Represented as the ISO country code for this country. Max length: 5000.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `country_spec`.
  * `supported_bank_account_currencies` - Currencies that can be accepted in the specific country (for transfers).
  * `supported_payment_currencies` - Currencies that can be accepted in the specified country (for payments).
  * `supported_payment_methods` - Payment methods available in the specified country. You may need to enable some payment methods (e.g., [ACH](https://stripe.com/docs/ach)) on your account before they appear in this list. The `stripe` payment method refers to [charging through your platform](https://stripe.com/docs/connect/destination-charges).
  * `supported_transfer_countries` - Countries that can accept transfers from the specified country.
  * `verification_fields` - Expandable.
  """
  @type t :: %__MODULE__{
          default_currency: String.t(),
          id: String.t(),
          object: String.t(),
          supported_bank_account_currencies: map(),
          supported_payment_currencies: [String.t()],
          supported_payment_methods: [String.t()],
          supported_transfer_countries: [String.t()],
          verification_fields: __MODULE__.VerificationFields.t()
        }

  defstruct [
    :default_currency,
    :id,
    :object,
    :supported_bank_account_currencies,
    :supported_payment_currencies,
    :supported_payment_methods,
    :supported_transfer_countries,
    :verification_fields
  ]

  @object_name "country_spec"
  def object_name, do: @object_name

  def expandable_fields, do: ["verification_fields"]

  defmodule VerificationFields do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `company`
    * `individual`
    """
    @type t :: %__MODULE__{
            company: __MODULE__.Company.t() | nil,
            individual: __MODULE__.Individual.t() | nil
          }
    defstruct [:company, :individual]

    defmodule Company do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `additional` - Additional fields which are only required for some users.
      * `minimum` - Fields which every account must eventually provide.
      """
      @type t :: %__MODULE__{
              additional: [String.t()] | nil,
              minimum: [String.t()] | nil
            }
      defstruct [:additional, :minimum]
    end

    defmodule Individual do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `additional` - Additional fields which are only required for some users.
      * `minimum` - Fields which every account must eventually provide.
      """
      @type t :: %__MODULE__{
              additional: [String.t()] | nil,
              minimum: [String.t()] | nil
            }
      defstruct [:additional, :minimum]
    end

    def __inner_types__ do
      %{
        "company" => __MODULE__.Company,
        "individual" => __MODULE__.Individual
      }
    end
  end

  def __inner_types__ do
    %{
      "verification_fields" => __MODULE__.VerificationFields
    }
  end
end
