# File generated from our OpenAPI spec
defmodule Stripe.Resources.Issuing.PhysicalBundle do
  @moduledoc """
  IssuingPhysicalBundle

  A Physical Bundle represents the bundle of physical items - card stock, carrier letter, and envelope - that is shipped to a cardholder when you create a physical card.
  """

  @typedoc """
  * `features` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `name` - Friendly display name. Max length: 5000.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `issuing.physical_bundle`.
  * `status` - Whether this physical bundle can be used to create cards. Possible values: `active`, `inactive`, `review`.
  * `type` - Whether this physical bundle is a standard Stripe offering or custom-made for you. Possible values: `custom`, `standard`.
  """
  @type t :: %__MODULE__{
          features: map(),
          id: String.t(),
          livemode: boolean(),
          name: String.t(),
          object: String.t(),
          status: String.t(),
          type: String.t()
        }

  defstruct [:features, :id, :livemode, :name, :object, :status, :type]

  @object_name "issuing.physical_bundle"
  def object_name, do: @object_name

  def expandable_fields, do: ["features"]
end
