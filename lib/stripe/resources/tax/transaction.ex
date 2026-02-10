# File generated from our OpenAPI spec
defmodule Stripe.Resources.Tax.Transaction do
  @moduledoc """
  TaxProductResourceTaxTransaction

  A Tax Transaction records the tax collected from or refunded to your customer.

  Related guide: [Calculate tax in your custom payment flow](https://docs.stripe.com/tax/custom#tax-transaction)
  """

  @typedoc """
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Max length: 5000.
  * `customer` - The ID of an existing [Customer](https://docs.stripe.com/api/customers/object) used for the resource. Max length: 5000. Nullable.
  * `customer_details` - Expandable.
  * `id` - Unique identifier for the transaction. Max length: 5000.
  * `line_items` - The tax collected or refunded, by line item. Nullable. Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Nullable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `tax.transaction`.
  * `posted_at` - The Unix timestamp representing when the tax liability is assumed or reduced. Format: Unix timestamp.
  * `reference` - A custom unique identifier, such as 'myOrder_123'. Max length: 5000.
  * `reversal` - If `type=reversal`, contains information about what was reversed. Nullable. Expandable.
  * `ship_from_details` - The details of the ship from location, such as the address. Nullable. Expandable.
  * `shipping_cost` - The shipping cost details for the transaction. Nullable. Expandable.
  * `tax_date` - Timestamp of date at which the tax rules and rates in effect applies for the calculation. Format: Unix timestamp.
  * `type` - If `reversal`, this transaction reverses an earlier transaction. Possible values: `reversal`, `transaction`.
  """
  @type t :: %__MODULE__{
          created: integer(),
          currency: String.t(),
          customer: String.t(),
          customer_details: map(),
          id: String.t(),
          line_items: map() | nil,
          livemode: boolean(),
          metadata: map(),
          object: String.t(),
          posted_at: integer(),
          reference: String.t(),
          reversal: map(),
          ship_from_details: map(),
          shipping_cost: map(),
          tax_date: integer(),
          type: String.t()
        }

  defstruct [
    :created,
    :currency,
    :customer,
    :customer_details,
    :id,
    :line_items,
    :livemode,
    :metadata,
    :object,
    :posted_at,
    :reference,
    :reversal,
    :ship_from_details,
    :shipping_cost,
    :tax_date,
    :type
  ]

  @object_name "tax.transaction"
  def object_name, do: @object_name

  def expandable_fields,
    do: ["customer_details", "line_items", "reversal", "ship_from_details", "shipping_cost"]

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
