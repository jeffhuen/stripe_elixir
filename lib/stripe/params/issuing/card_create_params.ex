# File generated from our OpenAPI spec
defmodule Stripe.Params.Issuing.CardCreateParams do
  @moduledoc "Parameters for card create."

  @typedoc """
  * `cardholder` - The [Cardholder](https://docs.stripe.com/api#issuing_cardholder_object) object with which the card will be associated. Max length: 5000.
  * `currency` - The currency for the card.
  * `exp_month` - The desired expiration month (1-12) for this card if [specifying a custom expiration date](https://stripe.com/issuing/cards/virtual/issue-cards?testing-method=with-code#exp-dates).
  * `exp_year` - The desired 4-digit expiration year for this card if [specifying a custom expiration date](https://stripe.com/issuing/cards/virtual/issue-cards?testing-method=with-code#exp-dates).
  * `expand` - Specifies which fields in the response should be expanded.
  * `financial_account` - The new financial account ID the card will be associated with. This field allows a card to be reassigned to a different financial account.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `personalization_design` - The personalization design object belonging to this card. Max length: 5000.
  * `pin` - The desired PIN for this card.
  * `replacement_for` - The card this is meant to be a replacement for (if any). Max length: 5000.
  * `replacement_reason` - If `replacement_for` is specified, this should indicate why that card is being replaced. Possible values: `damaged`, `expired`, `lost`, `stolen`.
  * `second_line` - The second line to print on the card. Max length: 24 characters.
  * `shipping` - The address where the card will be shipped.
  * `spending_controls` - Rules that control spending for this card. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
  * `status` - Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. Possible values: `active`, `inactive`.
  * `type` - The type of card to issue. Possible values are `physical` or `virtual`. Possible values: `physical`, `virtual`.
  """
  @type t :: %__MODULE__{
          cardholder: String.t() | nil,
          currency: String.t(),
          exp_month: integer() | nil,
          exp_year: integer() | nil,
          expand: [String.t()] | nil,
          financial_account: String.t() | nil,
          metadata: map() | nil,
          personalization_design: String.t() | nil,
          pin: map() | nil,
          replacement_for: String.t() | nil,
          replacement_reason: String.t() | nil,
          second_line: map() | nil,
          shipping: map() | nil,
          spending_controls: map() | nil,
          status: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :cardholder,
    :currency,
    :exp_month,
    :exp_year,
    :expand,
    :financial_account,
    :metadata,
    :personalization_design,
    :pin,
    :replacement_for,
    :replacement_reason,
    :second_line,
    :shipping,
    :spending_controls,
    :status,
    :type
  ]

  defmodule Pin do
    @moduledoc "Nested parameters."

    @typedoc """
    * `encrypted_number` - The card's desired new PIN, encrypted under Stripe's public key. Max length: 5000.
    """
    @type t :: %__MODULE__{
            encrypted_number: String.t() | nil
          }
    defstruct [:encrypted_number]
  end

  defmodule Shipping do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - The address that the card is shipped to.
    * `address_validation` - Address validation settings.
    * `customs` - Customs information for the shipment.
    * `name` - The name printed on the shipping label when shipping the card. Max length: 5000.
    * `phone_number` - Phone number of the recipient of the shipment.
    * `require_signature` - Whether a signature is required for card delivery.
    * `service` - Shipment service. Possible values: `express`, `priority`, `standard`.
    * `type` - Packaging options. Possible values: `bulk`, `individual`.
    """
    @type t :: %__MODULE__{
            address: map() | nil,
            address_validation: map() | nil,
            customs: map() | nil,
            name: String.t() | nil,
            phone_number: String.t() | nil,
            require_signature: boolean() | nil,
            service: String.t() | nil,
            type: String.t() | nil
          }
    defstruct [
      :address,
      :address_validation,
      :customs,
      :name,
      :phone_number,
      :require_signature,
      :service,
      :type
    ]
  end

  defmodule SpendingControls do
    @moduledoc "Nested parameters."

    @typedoc """
    * `allowed_categories` - Array of strings containing [categories](https://docs.stripe.com/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
    * `allowed_merchant_countries` - Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
    * `blocked_categories` - Array of strings containing [categories](https://docs.stripe.com/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
    * `blocked_merchant_countries` - Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
    * `spending_limits` - Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
    """
    @type t :: %__MODULE__{
            allowed_categories: [String.t()] | nil,
            allowed_merchant_countries: [String.t()] | nil,
            blocked_categories: [String.t()] | nil,
            blocked_merchant_countries: [String.t()] | nil,
            spending_limits: [map()] | nil
          }
    defstruct [
      :allowed_categories,
      :allowed_merchant_countries,
      :blocked_categories,
      :blocked_merchant_countries,
      :spending_limits
    ]
  end
end
