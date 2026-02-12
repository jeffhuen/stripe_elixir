# File generated from our OpenAPI spec
defmodule Stripe.Resources.LineItem do
  @moduledoc """
  LineItem

  A line item.
  """

  @typedoc """
  * `adjustable_quantity` - Nullable. Expandable.
  * `amount_discount` - Total discount amount applied. If no discounts were applied, defaults to 0.
  * `amount_subtotal` - Total before any discounts or taxes are applied.
  * `amount_tax` - Total tax amount applied. If no tax was applied, defaults to 0.
  * `amount_total` - Total after discounts and taxes.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Defaults to product name. Max length: 5000. Nullable.
  * `discounts` - The discounts applied to the line item. Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Nullable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `item`.
  * `price` - The price used to generate the line item. Nullable. Expandable.
  * `quantity` - The quantity of products being purchased. Nullable.
  * `taxes` - The taxes applied to the line item. Expandable.
  """
  @type t :: %__MODULE__{
          adjustable_quantity: __MODULE__.AdjustableQuantity.t(),
          amount_discount: integer(),
          amount_subtotal: integer(),
          amount_tax: integer(),
          amount_total: integer(),
          currency: String.t(),
          description: String.t(),
          discounts: [__MODULE__.Discounts.t()] | nil,
          id: String.t(),
          metadata: %{String.t() => String.t()},
          object: String.t(),
          price: Stripe.Resources.Price.t(),
          quantity: integer(),
          taxes: [__MODULE__.Taxes.t()] | nil
        }

  defstruct [
    :adjustable_quantity,
    :amount_discount,
    :amount_subtotal,
    :amount_tax,
    :amount_total,
    :currency,
    :description,
    :discounts,
    :id,
    :metadata,
    :object,
    :price,
    :quantity,
    :taxes
  ]

  @object_name "item"
  def object_name, do: @object_name

  def expandable_fields, do: ["adjustable_quantity", "discounts", "price", "taxes"]

  defmodule AdjustableQuantity do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `enabled`
    * `maximum` - Nullable.
    * `minimum` - Nullable.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil,
            maximum: integer() | nil,
            minimum: integer() | nil
          }
    defstruct [:enabled, :maximum, :minimum]
  end

  defmodule Discounts do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `amount` - The amount discounted.
    * `discount`
    """
    @type t :: %__MODULE__{
            amount: integer() | nil,
            discount: Stripe.Resources.Discount.t() | nil
          }
    defstruct [:amount, :discount]
  end

  defmodule Taxes do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `amount` - Amount of tax applied for this rate.
    * `rate`
    * `taxability_reason` - The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported. Possible values: `customer_exempt`, `not_collecting`, `not_subject_to_tax`, `not_supported`, `portion_product_exempt`, `portion_reduced_rated`, `portion_standard_rated`, `product_exempt`, `product_exempt_holiday`, `proportionally_rated`, `reduced_rated`, `reverse_charge`, `standard_rated`, `taxable_basis_reduced`, `zero_rated`. Nullable.
    * `taxable_amount` - The amount on which tax is calculated, in cents (or local equivalent). Nullable.
    """
    @type t :: %__MODULE__{
            amount: integer() | nil,
            rate: Stripe.Resources.TaxRate.t() | nil,
            taxability_reason: String.t() | nil,
            taxable_amount: integer() | nil
          }
    defstruct [:amount, :rate, :taxability_reason, :taxable_amount]
  end

  def __inner_types__ do
    %{
      "adjustable_quantity" => __MODULE__.AdjustableQuantity,
      "discounts" => __MODULE__.Discounts,
      "price" => Stripe.Resources.Price,
      "taxes" => __MODULE__.Taxes
    }
  end
end
