# File generated from our OpenAPI spec
defmodule Stripe.Resources.Issuing.Card do
  @moduledoc """
  IssuingCard

  You can [create physical or virtual cards](https://docs.stripe.com/issuing) that are issued to cardholders.
  """

  @typedoc """
  * `brand` - The brand of the card. Max length: 5000.
  * `cancellation_reason` - The reason why the card was canceled. Possible values: `design_rejected`, `lost`, `stolen`. Nullable.
  * `cardholder` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Supported currencies are `usd` in the US, `eur` in the EU, and `gbp` in the UK. Format: ISO 4217 currency code.
  * `cvc` - The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://docs.stripe.com/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://docs.stripe.com/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint. Max length: 5000.
  * `exp_month` - The expiration month of the card.
  * `exp_year` - The expiration year of the card.
  * `financial_account` - The financial account this card is attached to. Max length: 5000. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `last4` - The last 4 digits of the card number. Max length: 5000.
  * `latest_fraud_warning` - Stripe’s assessment of whether this card’s details have been compromised. If this property isn't null, cancel and reissue the card to prevent fraudulent activity risk. Nullable. Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `number` - The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://docs.stripe.com/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://docs.stripe.com/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint. Max length: 5000.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `issuing.card`.
  * `personalization_design` - The personalization design object belonging to this card. Nullable. Expandable.
  * `replaced_by` - The latest card that replaces this card, if any. Nullable. Expandable.
  * `replacement_for` - The card this card replaces, if any. Nullable. Expandable.
  * `replacement_reason` - The reason why the previous card needed to be replaced. Possible values: `damaged`, `expired`, `lost`, `stolen`. Nullable.
  * `second_line` - Text separate from cardholder name, printed on the card. Max length: 5000. Nullable.
  * `shipping` - Where and how the card will be shipped. Nullable. Expandable.
  * `spending_controls` - Expandable.
  * `status` - Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. Possible values: `active`, `canceled`, `inactive`.
  * `type` - The type of the card. Possible values: `physical`, `virtual`.
  * `wallets` - Information relating to digital wallets (like Apple Pay and Google Pay). Nullable. Expandable.
  """
  @type t :: %__MODULE__{
          brand: String.t(),
          cancellation_reason: String.t(),
          cardholder: String.t() | map(),
          created: integer(),
          currency: String.t(),
          cvc: String.t() | nil,
          exp_month: integer(),
          exp_year: integer(),
          financial_account: String.t() | nil,
          id: String.t(),
          last4: String.t(),
          latest_fraud_warning: map(),
          livemode: boolean(),
          metadata: map(),
          number: String.t() | nil,
          object: String.t(),
          personalization_design: String.t() | map(),
          replaced_by: String.t() | map(),
          replacement_for: String.t() | map(),
          replacement_reason: String.t(),
          second_line: String.t(),
          shipping: map(),
          spending_controls: map(),
          status: String.t(),
          type: String.t(),
          wallets: map()
        }

  defstruct [
    :brand,
    :cancellation_reason,
    :cardholder,
    :created,
    :currency,
    :cvc,
    :exp_month,
    :exp_year,
    :financial_account,
    :id,
    :last4,
    :latest_fraud_warning,
    :livemode,
    :metadata,
    :number,
    :object,
    :personalization_design,
    :replaced_by,
    :replacement_for,
    :replacement_reason,
    :second_line,
    :shipping,
    :spending_controls,
    :status,
    :type,
    :wallets
  ]

  @object_name "issuing.card"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "cardholder",
      "latest_fraud_warning",
      "personalization_design",
      "replaced_by",
      "replacement_for",
      "shipping",
      "spending_controls",
      "wallets"
    ]
end
