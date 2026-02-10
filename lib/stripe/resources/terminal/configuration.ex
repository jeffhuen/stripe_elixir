# File generated from our OpenAPI spec
defmodule Stripe.Resources.Terminal.Configuration do
  @moduledoc """
  TerminalConfigurationConfiguration

  A Configurations object represents how features should be configured for terminal readers.
  For information about how to use it, see the [Terminal configurations documentation](https://docs.stripe.com/terminal/fleet/configurations-overview).
  """

  @typedoc """
  * `bbpos_wisepad3` - Expandable.
  * `bbpos_wisepos_e` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `is_account_default` - Whether this Configuration is the default for your account Nullable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `name` - String indicating the name of the Configuration object, set by the user Max length: 5000. Nullable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `terminal.configuration`.
  * `offline` - Expandable.
  * `reboot_window` - Expandable.
  * `stripe_s700` - Expandable.
  * `tipping` - Expandable.
  * `verifone_p400` - Expandable.
  * `wifi` - Expandable.
  """
  @type t :: %__MODULE__{
          bbpos_wisepad3: map() | nil,
          bbpos_wisepos_e: map() | nil,
          id: String.t(),
          is_account_default: boolean(),
          livemode: boolean(),
          name: String.t(),
          object: String.t(),
          offline: map() | nil,
          reboot_window: map() | nil,
          stripe_s700: map() | nil,
          tipping: map() | nil,
          verifone_p400: map() | nil,
          wifi: map() | nil
        }

  defstruct [
    :bbpos_wisepad3,
    :bbpos_wisepos_e,
    :id,
    :is_account_default,
    :livemode,
    :name,
    :object,
    :offline,
    :reboot_window,
    :stripe_s700,
    :tipping,
    :verifone_p400,
    :wifi
  ]

  @object_name "terminal.configuration"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "bbpos_wisepad3",
      "bbpos_wisepos_e",
      "offline",
      "reboot_window",
      "stripe_s700",
      "tipping",
      "verifone_p400",
      "wifi"
    ]
end
