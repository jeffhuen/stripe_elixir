# File generated from our OpenAPI spec
defmodule Stripe.Resources.Issuing.Cardholder do
  @moduledoc """
  IssuingCardholder

  An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://docs.stripe.com/issuing) cards.

  Related guide: [How to create a cardholder](https://docs.stripe.com/issuing/cards/virtual/issue-cards#create-cardholder)
  """

  @typedoc """
  * `billing` - Expandable.
  * `company` - Additional information about a `company` cardholder. Nullable. Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `email` - The cardholder's email address. Max length: 5000. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `individual` - Additional information about an `individual` cardholder. Nullable. Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `name` - The cardholder's name. This will be printed on cards issued to them. Max length: 5000.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `issuing.cardholder`.
  * `phone_number` - The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://docs.stripe.com/issuing/3d-secure#when-is-3d-secure-applied) for more details. Max length: 5000. Nullable.
  * `preferred_locales` - The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
  This changes the language of the [3D Secure flow](https://docs.stripe.com/issuing/3d-secure) and one-time password messages sent to the cardholder. Nullable.
  * `requirements` - Expandable.
  * `spending_controls` - Rules that control spending across this cardholder's cards. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details. Nullable. Expandable.
  * `status` - Specifies whether to permit authorizations on this cardholder's cards. Possible values: `active`, `blocked`, `inactive`.
  * `type` - One of `individual` or `company`. See [Choose a cardholder type](https://docs.stripe.com/issuing/other/choose-cardholder) for more details. Possible values: `company`, `individual`.
  """
  @type t :: %__MODULE__{
          billing: map(),
          company: map(),
          created: integer(),
          email: String.t(),
          id: String.t(),
          individual: map(),
          livemode: boolean(),
          metadata: map(),
          name: String.t(),
          object: String.t(),
          phone_number: String.t(),
          preferred_locales: [String.t()],
          requirements: map(),
          spending_controls: map(),
          status: String.t(),
          type: String.t()
        }

  defstruct [
    :billing,
    :company,
    :created,
    :email,
    :id,
    :individual,
    :livemode,
    :metadata,
    :name,
    :object,
    :phone_number,
    :preferred_locales,
    :requirements,
    :spending_controls,
    :status,
    :type
  ]

  @object_name "issuing.cardholder"
  def object_name, do: @object_name

  def expandable_fields,
    do: ["billing", "company", "individual", "requirements", "spending_controls"]
end
