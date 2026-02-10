# File generated from our OpenAPI spec
defmodule Stripe.Resources.Tax.Registration do
  @moduledoc """
  TaxProductRegistrationsResourceTaxRegistration

  A Tax `Registration` lets us know that your business is registered to collect tax on payments within a region, enabling you to [automatically collect tax](https://docs.stripe.com/tax).

  Stripe doesn't register on your behalf with the relevant authorities when you create a Tax `Registration` object. For more information on how to register to collect tax, see [our guide](https://docs.stripe.com/tax/registering).

  Related guide: [Using the Registrations API](https://docs.stripe.com/tax/registrations-api)
  """

  @typedoc """
  * `active_from` - Time at which the registration becomes active. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `country` - Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)). Max length: 5000.
  * `country_options` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `expires_at` - If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `tax.registration`.
  * `status` - The status of the registration. This field is present for convenience and can be deduced from `active_from` and `expires_at`. Possible values: `active`, `expired`, `scheduled`.
  """
  @type t :: %__MODULE__{
          active_from: integer(),
          country: String.t(),
          country_options: map(),
          created: integer(),
          expires_at: integer(),
          id: String.t(),
          livemode: boolean(),
          object: String.t(),
          status: String.t()
        }

  defstruct [
    :active_from,
    :country,
    :country_options,
    :created,
    :expires_at,
    :id,
    :livemode,
    :object,
    :status
  ]

  @object_name "tax.registration"
  def object_name, do: @object_name

  def expandable_fields, do: ["country_options"]
end
