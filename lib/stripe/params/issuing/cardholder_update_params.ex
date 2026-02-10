# File generated from our OpenAPI spec
defmodule Stripe.Params.Issuing.CardholderUpdateParams do
  @moduledoc "Parameters for cardholder update."

  @typedoc """
  * `billing` - The cardholder's billing address.
  * `company` - Additional information about a `company` cardholder.
  * `email` - The cardholder's email address.
  * `expand` - Specifies which fields in the response should be expanded.
  * `individual` - Additional information about an `individual` cardholder.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `phone_number` - The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://docs.stripe.com/issuing/3d-secure) for more details.
  * `preferred_locales` - The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
  This changes the language of the [3D Secure flow](https://docs.stripe.com/issuing/3d-secure) and one-time password messages sent to the cardholder.
  * `spending_controls` - Rules that control spending across this cardholder's cards. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
  * `status` - Specifies whether to permit authorizations on this cardholder's cards. Possible values: `active`, `inactive`.
  """
  @type t :: %__MODULE__{
          billing: map() | nil,
          company: map() | nil,
          email: String.t() | nil,
          expand: [String.t()] | nil,
          individual: map() | nil,
          metadata: map() | nil,
          phone_number: String.t() | nil,
          preferred_locales: [String.t()] | nil,
          spending_controls: map() | nil,
          status: String.t() | nil
        }

  defstruct [
    :billing,
    :company,
    :email,
    :expand,
    :individual,
    :metadata,
    :phone_number,
    :preferred_locales,
    :spending_controls,
    :status
  ]

  defmodule Billing do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - The cardholder’s billing address.
    """
    @type t :: %__MODULE__{
            address: map() | nil
          }
    defstruct [:address]
  end

  defmodule Company do
    @moduledoc "Nested parameters."

    @typedoc """
    * `tax_id` - The entity's business ID number. Max length: 5000.
    """
    @type t :: %__MODULE__{
            tax_id: String.t() | nil
          }
    defstruct [:tax_id]
  end

  defmodule Individual do
    @moduledoc "Nested parameters."

    @typedoc """
    * `card_issuing` - Information related to the card_issuing program for this cardholder.
    * `dob` - The date of birth of this cardholder. Cardholders must be older than 13 years old.
    * `first_name` - The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
    * `last_name` - The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
    * `verification` - Government-issued ID document for this cardholder.
    """
    @type t :: %__MODULE__{
            card_issuing: map() | nil,
            dob: map() | nil,
            first_name: String.t() | nil,
            last_name: String.t() | nil,
            verification: map() | nil
          }
    defstruct [:card_issuing, :dob, :first_name, :last_name, :verification]
  end

  defmodule SpendingControls do
    @moduledoc "Nested parameters."

    @typedoc """
    * `allowed_categories` - Array of strings containing [categories](https://docs.stripe.com/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
    * `allowed_merchant_countries` - Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
    * `blocked_categories` - Array of strings containing [categories](https://docs.stripe.com/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
    * `blocked_merchant_countries` - Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
    * `spending_limits` - Limit spending with amount-based rules that apply across this cardholder's cards.
    * `spending_limits_currency` - Currency of amounts within `spending_limits`. Defaults to your merchant country's currency.
    """
    @type t :: %__MODULE__{
            allowed_categories: [String.t()] | nil,
            allowed_merchant_countries: [String.t()] | nil,
            blocked_categories: [String.t()] | nil,
            blocked_merchant_countries: [String.t()] | nil,
            spending_limits: [map()] | nil,
            spending_limits_currency: String.t() | nil
          }
    defstruct [
      :allowed_categories,
      :allowed_merchant_countries,
      :blocked_categories,
      :blocked_merchant_countries,
      :spending_limits,
      :spending_limits_currency
    ]
  end
end
