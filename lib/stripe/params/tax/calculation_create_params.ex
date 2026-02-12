# File generated from our OpenAPI spec
defmodule Stripe.Params.Tax.CalculationCreateParams do
  @moduledoc "Parameters for calculation create."

  @typedoc """
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `customer` - The ID of an existing customer to use for this calculation. If provided, the customer's address and tax IDs are copied to `customer_details`. Max length: 5000.
  * `customer_details` - Details about the customer, including address and tax IDs.
  * `expand` - Specifies which fields in the response should be expanded.
  * `line_items` - A list of items the customer is purchasing.
  * `ship_from_details` - Details about the address from which the goods are being shipped.
  * `shipping_cost` - Shipping cost details to be used for the calculation.
  * `tax_date` - Timestamp of date at which the tax rules and rates in effect applies for the calculation. Measured in seconds since the Unix epoch. Can be up to 48 hours in the past, and up to 48 hours in the future.
  """
  @type t :: %__MODULE__{
          currency: String.t(),
          customer: String.t() | nil,
          customer_details: __MODULE__.CustomerDetails.t() | nil,
          expand: [String.t()] | nil,
          line_items: [__MODULE__.LineItems.t()],
          ship_from_details: __MODULE__.ShipFromDetails.t() | nil,
          shipping_cost: __MODULE__.ShippingCost.t() | nil,
          tax_date: integer() | nil
        }

  defstruct [
    :currency,
    :customer,
    :customer_details,
    :expand,
    :line_items,
    :ship_from_details,
    :shipping_cost,
    :tax_date
  ]

  defmodule CustomerDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - The customer's postal address (for example, home or business location).
    * `address_source` - The type of customer address provided. Possible values: `billing`, `shipping`.
    * `ip_address` - The customer's IP address (IPv4 or IPv6).
    * `tax_ids` - The customer's tax IDs. Stripe Tax might consider a transaction with applicable tax IDs to be B2B, which might affect the tax calculation result. Stripe Tax doesn't validate tax IDs for correctness.
    * `taxability_override` - Overrides the tax calculation result to allow you to not collect tax from your customer. Use this if you've manually checked your customer's tax exemptions. Prefer providing the customer's `tax_ids` where possible, which automatically determines whether `reverse_charge` applies. Possible values: `customer_exempt`, `none`, `reverse_charge`.
    """
    @type t :: %__MODULE__{
            address: __MODULE__.Address.t() | nil,
            address_source: String.t() | nil,
            ip_address: String.t() | nil,
            tax_ids: [__MODULE__.TaxIds.t()] | nil,
            taxability_override: String.t() | nil
          }
    defstruct [:address, :address_source, :ip_address, :tax_ids, :taxability_override]
  end

  defmodule LineItems do
    @moduledoc "Nested parameters."

    @typedoc """
    * `amount` - A positive integer representing the line item's total price in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
    If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes are calculated on top of this amount.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    * `product` - If provided, the product's `tax_code` will be used as the line item's `tax_code`. Max length: 5000.
    * `quantity` - The number of units of the item being purchased. Used to calculate the per-unit price from the total `amount` for the line. For example, if `amount=100` and `quantity=4`, the calculated unit price is 25.
    * `reference` - A custom identifier for this line item, which must be unique across the line items in the calculation. The reference helps identify each line item in exported [tax reports](https://docs.stripe.com/tax/reports). Max length: 500.
    * `tax_behavior` - Specifies whether the `amount` includes taxes. Defaults to `exclusive`. Possible values: `exclusive`, `inclusive`.
    * `tax_code` - A [tax code](https://docs.stripe.com/tax/tax-categories) ID to use for this line item. If not provided, we will use the tax code from the provided `product` param. If neither `tax_code` nor `product` is provided, we will use the default tax code from your Tax Settings.
    """
    @type t :: %__MODULE__{
            amount: integer() | nil,
            metadata: %{String.t() => String.t()} | nil,
            product: String.t() | nil,
            quantity: integer() | nil,
            reference: String.t() | nil,
            tax_behavior: String.t() | nil,
            tax_code: String.t() | nil
          }
    defstruct [:amount, :metadata, :product, :quantity, :reference, :tax_behavior, :tax_code]
  end

  defmodule ShipFromDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - The address from which the goods are being shipped from.
    """
    @type t :: %__MODULE__{
            address: __MODULE__.Address.t() | nil
          }
    defstruct [:address]
  end

  defmodule ShippingCost do
    @moduledoc "Nested parameters."

    @typedoc """
    * `amount` - A positive integer in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) representing the shipping charge. If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes are calculated on top of this amount.
    * `shipping_rate` - If provided, the [shipping rate](https://docs.stripe.com/api/shipping_rates/object)'s `amount`, `tax_code` and `tax_behavior` are used. If you provide a shipping rate, then you cannot pass the `amount`, `tax_code`, or `tax_behavior` parameters. Max length: 5000.
    * `tax_behavior` - Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes. Defaults to `exclusive`. Possible values: `exclusive`, `inclusive`.
    * `tax_code` - The [tax code](https://docs.stripe.com/tax/tax-categories) used to calculate tax on shipping. If not provided, the default shipping tax code from your [Tax Settings](https://dashboard.stripe.com/settings/tax) is used.
    """
    @type t :: %__MODULE__{
            amount: integer() | nil,
            shipping_rate: String.t() | nil,
            tax_behavior: String.t() | nil,
            tax_code: String.t() | nil
          }
    defstruct [:amount, :shipping_rate, :tax_behavior, :tax_code]
  end
end
