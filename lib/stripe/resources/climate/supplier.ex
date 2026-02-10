# File generated from our OpenAPI spec
defmodule Stripe.Resources.Climate.Supplier do
  @moduledoc """
  ClimateRemovalsSuppliers

  A supplier of carbon removal.
  """

  @typedoc """
  * `id` - Unique identifier for the object. Max length: 5000.
  * `info_url` - Link to a webpage to learn more about the supplier. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `locations` - The locations in which this supplier operates. Expandable.
  * `name` - Name of this carbon removal supplier. Max length: 5000.
  * `object` - String representing the object’s type. Objects of the same type share the same value. Possible values: `climate.supplier`.
  * `removal_pathway` - The scientific pathway used for carbon removal. Possible values: `biomass_carbon_removal_and_storage`, `direct_air_capture`, `enhanced_weathering`.
  """
  @type t :: %__MODULE__{
          id: String.t(),
          info_url: String.t(),
          livemode: boolean(),
          locations: [map()],
          name: String.t(),
          object: String.t(),
          removal_pathway: String.t()
        }

  defstruct [:id, :info_url, :livemode, :locations, :name, :object, :removal_pathway]

  @object_name "climate.supplier"
  def object_name, do: @object_name

  def expandable_fields, do: ["locations"]
end
