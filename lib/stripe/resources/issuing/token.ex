# File generated from our OpenAPI spec
defmodule Stripe.Resources.Issuing.Token do
  @moduledoc """
  IssuingNetworkToken

  An issuing token object is created when an issued card is added to a digital wallet. As a [card issuer](https://docs.stripe.com/issuing), you can [view and manage these tokens](https://docs.stripe.com/issuing/controls/token-management) through Stripe.
  """

  @typedoc """
  * `card` - Card associated with this token. Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `device_fingerprint` - The hashed ID derived from the device ID from the card network associated with the token. Max length: 5000. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `last4` - The last four digits of the token. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `network` - The token service provider / card network associated with the token. Possible values: `mastercard`, `visa`.
  * `network_data` - Expandable.
  * `network_updated_at` - Time at which the token was last updated by the card network. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `issuing.token`.
  * `status` - The usage state of the token. Possible values: `active`, `deleted`, `requested`, `suspended`.
  * `wallet_provider` - The digital wallet for this token, if one was used. Possible values: `apple_pay`, `google_pay`, `samsung_pay`.
  """
  @type t :: %__MODULE__{
          card: String.t() | map(),
          created: integer(),
          device_fingerprint: String.t(),
          id: String.t(),
          last4: String.t() | nil,
          livemode: boolean(),
          network: String.t(),
          network_data: map() | nil,
          network_updated_at: integer(),
          object: String.t(),
          status: String.t(),
          wallet_provider: String.t() | nil
        }

  defstruct [
    :card,
    :created,
    :device_fingerprint,
    :id,
    :last4,
    :livemode,
    :network,
    :network_data,
    :network_updated_at,
    :object,
    :status,
    :wallet_provider
  ]

  @object_name "issuing.token"
  def object_name, do: @object_name

  def expandable_fields, do: ["card", "network_data"]
end
