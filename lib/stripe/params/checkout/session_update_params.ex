# File generated from our OpenAPI spec
defmodule Stripe.Params.Checkout.SessionUpdateParams do
  @moduledoc "Parameters for session update."

  @typedoc """
  * `collected_information` - Information about the customer collected within the Checkout Session. Can only be set when updating `embedded` or `custom` sessions.
  * `expand` - Specifies which fields in the response should be expanded.
  * `line_items` - A list of items the customer is purchasing.

  When updating line items, you must retransmit the entire array of line items.

  To retain an existing line item, specify its `id`.

  To update an existing line item, specify its `id` along with the new values of the fields to update.

  To add a new line item, specify one of `price` or `price_data` and `quantity`.

  To remove an existing line item, omit the line item's ID from the retransmitted array.

  To reorder a line item, specify it at the desired position in the retransmitted array.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `shipping_options` - The shipping rate options to apply to this Session. Up to a maximum of 5.
  """
  @type t :: %__MODULE__{
          collected_information: map() | nil,
          expand: [String.t()] | nil,
          line_items: [map()] | nil,
          metadata: map() | nil,
          shipping_options: map() | nil
        }

  defstruct [:collected_information, :expand, :line_items, :metadata, :shipping_options]

  defmodule CollectedInformation do
    @moduledoc "Nested parameters."

    @typedoc """
    * `shipping_details` - The shipping details to apply to this Session.
    """
    @type t :: %__MODULE__{
            shipping_details: map() | nil
          }
    defstruct [:shipping_details]
  end

  defmodule LineItems do
    @moduledoc "Nested parameters."

    @typedoc """
    * `adjustable_quantity` - When set, provides configuration for this item’s quantity to be adjusted by the customer during Checkout.
    * `id` - ID of an existing line item. Max length: 5000.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `price` - The ID of the [Price](https://docs.stripe.com/api/prices). One of `price` or `price_data` is required when creating a new line item. Max length: 5000.
    * `price_data` - Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline. One of `price` or `price_data` is required when creating a new line item.
    * `quantity` - The quantity of the line item being purchased. Quantity should not be defined when `recurring.usage_type=metered`.
    * `tax_rates` - The [tax rates](https://docs.stripe.com/api/tax_rates) which apply to this line item.
    """
    @type t :: %__MODULE__{
            adjustable_quantity: map() | nil,
            id: String.t() | nil,
            metadata: map() | nil,
            price: String.t() | nil,
            price_data: map() | nil,
            quantity: integer() | nil,
            tax_rates: map() | nil
          }
    defstruct [:adjustable_quantity, :id, :metadata, :price, :price_data, :quantity, :tax_rates]
  end
end
