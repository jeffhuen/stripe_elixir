# File generated from our OpenAPI spec
defmodule Stripe.Resources.Terminal.Reader do
  @moduledoc """
  TerminalReaderReader

  A Reader represents a physical device for accepting payment details.

  Related guide: [Connecting to a reader](https://docs.stripe.com/terminal/payments/connect-reader)
  """

  @typedoc """
  * `action` - The most recent action performed by the reader. Nullable. Expandable.
  * `device_sw_version` - The current software version of the reader. Max length: 5000. Nullable.
  * `device_type` - Device type of the reader. Possible values: `bbpos_chipper2x`, `bbpos_wisepad3`, `bbpos_wisepos_e`, `mobile_phone_reader`, `simulated_stripe_s700`, `simulated_wisepos_e`, `stripe_m2`, `stripe_s700`, `verifone_P400`.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `ip_address` - The local IP address of the reader. Max length: 5000. Nullable.
  * `label` - Custom label given to the reader for easier identification. Max length: 5000.
  * `last_seen_at` - The last time this reader reported to Stripe backend. Timestamp is measured in milliseconds since the Unix epoch. Unlike most other Stripe timestamp fields which use seconds, this field uses milliseconds. Format: Unix timestamp. Nullable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `location` - The location identifier of the reader. Nullable. Expandable.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `terminal.reader`.
  * `serial_number` - Serial number of the reader. Max length: 5000.
  * `status` - The networking status of the reader. We do not recommend using this field in flows that may block taking payments. Possible values: `offline`, `online`. Nullable.
  """
  @type t :: %__MODULE__{
          action: map(),
          device_sw_version: String.t(),
          device_type: String.t(),
          id: String.t(),
          ip_address: String.t(),
          label: String.t(),
          last_seen_at: integer(),
          livemode: boolean(),
          location: String.t() | map(),
          metadata: map(),
          object: String.t(),
          serial_number: String.t(),
          status: String.t()
        }

  defstruct [
    :action,
    :device_sw_version,
    :device_type,
    :id,
    :ip_address,
    :label,
    :last_seen_at,
    :livemode,
    :location,
    :metadata,
    :object,
    :serial_number,
    :status
  ]

  @object_name "terminal.reader"
  def object_name, do: @object_name

  def expandable_fields, do: ["action", "location"]
end
