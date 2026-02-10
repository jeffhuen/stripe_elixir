# File generated from our OpenAPI spec
defmodule Stripe.Resources.Terminal.Location do
  @moduledoc """
  TerminalLocationLocation

  A Location represents a grouping of readers.

  Related guide: [Fleet management](https://docs.stripe.com/terminal/fleet/locations)
  """

  @typedoc """
  * `address` - Expandable.
  * `address_kana` - Expandable.
  * `address_kanji` - Expandable.
  * `configuration_overrides` - The ID of a configuration that will be used to customize all readers in this location. Max length: 5000.
  * `display_name` - The display name of the location. Max length: 5000.
  * `display_name_kana` - The Kana variation of the display name of the location. Max length: 5000.
  * `display_name_kanji` - The Kanji variation of the display name of the location. Max length: 5000.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `terminal.location`.
  * `phone` - The phone number of the location. Max length: 5000.
  """
  @type t :: %__MODULE__{
          address: String.t() | map(),
          address_kana: map() | nil,
          address_kanji: map() | nil,
          configuration_overrides: String.t() | nil,
          display_name: String.t(),
          display_name_kana: String.t() | nil,
          display_name_kanji: String.t() | nil,
          id: String.t(),
          livemode: boolean(),
          metadata: map(),
          object: String.t(),
          phone: String.t() | nil
        }

  defstruct [
    :address,
    :address_kana,
    :address_kanji,
    :configuration_overrides,
    :display_name,
    :display_name_kana,
    :display_name_kanji,
    :id,
    :livemode,
    :metadata,
    :object,
    :phone
  ]

  @object_name "terminal.location"
  def object_name, do: @object_name

  def expandable_fields, do: ["address", "address_kana", "address_kanji"]
end
