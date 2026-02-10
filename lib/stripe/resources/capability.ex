# File generated from our OpenAPI spec
defmodule Stripe.Resources.Capability do
  @moduledoc """
  AccountCapability

  This is an object representing a capability for a Stripe account.

  Related guide: [Account capabilities](https://docs.stripe.com/connect/account-capabilities)
  """

  @typedoc """
  * `account` - The account for which the capability enables functionality. Expandable.
  * `future_requirements` - Expandable.
  * `id` - The identifier for the capability. Max length: 5000.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `capability`.
  * `requested` - Whether the capability has been requested.
  * `requested_at` - Time at which the capability was requested. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `requirements` - Expandable.
  * `status` - The status of the capability. Possible values: `active`, `inactive`, `pending`, `unrequested`.
  """
  @type t :: %__MODULE__{
          account: String.t() | map(),
          future_requirements: map() | nil,
          id: String.t(),
          object: String.t(),
          requested: boolean(),
          requested_at: integer(),
          requirements: map() | nil,
          status: String.t()
        }

  defstruct [
    :account,
    :future_requirements,
    :id,
    :object,
    :requested,
    :requested_at,
    :requirements,
    :status
  ]

  @object_name "capability"
  def object_name, do: @object_name

  def expandable_fields, do: ["account", "future_requirements", "requirements"]
end
