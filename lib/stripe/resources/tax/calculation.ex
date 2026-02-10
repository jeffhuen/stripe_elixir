# File generated from our OpenAPI spec
defmodule Stripe.Resources.Tax.Calculation do
  @moduledoc """
  TaxProductResourceTaxCalculation

  A Tax Calculation allows you to calculate the tax to collect from your customer.

  Related guide: [Calculate tax in your custom payment flow](https://docs.stripe.com/tax/custom)
  """

  @typedoc """
  * `amount_total` - Total amount after taxes in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Max length: 5000.
  * `customer` - The ID of an existing [Customer](https://docs.stripe.com/api/customers/object) used for the resource. Max length: 5000. Nullable.
  * `customer_details` - Expandable.
  * `expires_at` - Timestamp of date at which the tax calculation will expire. Format: Unix timestamp. Nullable.
  * `id` - Unique identifier for the calculation. Max length: 5000. Nullable.
  * `line_items` - The list of items the customer is purchasing. Nullable. Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `tax.calculation`.
  * `ship_from_details` - The details of the ship from location, such as the address. Nullable. Expandable.
  * `shipping_cost` - The shipping cost details for the calculation. Nullable. Expandable.
  * `tax_amount_exclusive` - The amount of tax to be collected on top of the line item prices.
  * `tax_amount_inclusive` - The amount of tax already included in the line item prices.
  * `tax_breakdown` - Breakdown of individual tax amounts that add up to the total. Expandable.
  * `tax_date` - Timestamp of date at which the tax rules and rates in effect applies for the calculation. Format: Unix timestamp.
  """
  @type t :: %__MODULE__{
          amount_total: integer(),
          currency: String.t(),
          customer: String.t(),
          customer_details: map(),
          expires_at: integer(),
          id: String.t(),
          line_items: map() | nil,
          livemode: boolean(),
          object: String.t(),
          ship_from_details: map(),
          shipping_cost: map(),
          tax_amount_exclusive: integer(),
          tax_amount_inclusive: integer(),
          tax_breakdown: [map()],
          tax_date: integer()
        }

  defstruct [
    :amount_total,
    :currency,
    :customer,
    :customer_details,
    :expires_at,
    :id,
    :line_items,
    :livemode,
    :object,
    :ship_from_details,
    :shipping_cost,
    :tax_amount_exclusive,
    :tax_amount_inclusive,
    :tax_breakdown,
    :tax_date
  ]

  @object_name "tax.calculation"
  def object_name, do: @object_name

  def expandable_fields,
    do: ["customer_details", "line_items", "ship_from_details", "shipping_cost", "tax_breakdown"]

  defmodule LineItems do
    @moduledoc false

    @typedoc """
    * `data` - Details about each object.
    * `has_more` - True if this list has another page of items after this one that can be fetched.
    * `object` - String representing the object's type. Objects of the same type share the same value. Always has the value `list`. Possible values: `list`.
    * `url` - The URL where this list can be accessed. Max length: 5000.
    """
    @type t :: %__MODULE__{
            data: [map()] | nil,
            has_more: boolean() | nil,
            object: String.t() | nil,
            url: String.t() | nil
          }
    defstruct [:data, :has_more, :object, :url]
  end

  def __inner_types__ do
    %{
      "line_items" => __MODULE__.LineItems
    }
  end
end
