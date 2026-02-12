# File generated from our OpenAPI spec
defmodule Stripe.Resources.Climate.Product do
  @moduledoc """
  ClimateRemovalsProducts

  A Climate product represents a type of carbon removal unit available for reservation.
  You can retrieve it to see the current price and availability.
  """

  @typedoc """
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `current_prices_per_metric_ton` - Current prices for a metric ton of carbon removal in a currency's smallest unit. Expandable.
  * `delivery_year` - The year in which the carbon removal is expected to be delivered. Nullable.
  * `id` - Unique identifier for the object. For convenience, Climate product IDs are human-readable strings
  that start with `climsku_`. See [carbon removal inventory](https://stripe.com/docs/climate/orders/carbon-removal-inventory)
  for a list of available carbon removal products. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metric_tons_available` - The quantity of metric tons available for reservation. Format: decimal string.
  * `name` - The Climate product's name. Max length: 5000.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `climate.product`.
  * `suppliers` - The carbon removal suppliers that fulfill orders for this Climate product. Expandable.
  """
  @type t :: %__MODULE__{
          created: integer(),
          current_prices_per_metric_ton: %{String.t() => __MODULE__.CurrentPricesPerMetricTon.t()},
          delivery_year: integer(),
          id: String.t(),
          livemode: boolean(),
          metric_tons_available: String.t(),
          name: String.t(),
          object: String.t(),
          suppliers: [Stripe.Resources.Climate.Supplier.t()]
        }

  defstruct [
    :created,
    :current_prices_per_metric_ton,
    :delivery_year,
    :id,
    :livemode,
    :metric_tons_available,
    :name,
    :object,
    :suppliers
  ]

  @object_name "climate.product"
  def object_name, do: @object_name

  def expandable_fields, do: ["current_prices_per_metric_ton", "suppliers"]

  defmodule CurrentPricesPerMetricTon do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `amount_fees` - Fees for one metric ton of carbon removal in the currency's smallest unit.
    * `amount_subtotal` - Subtotal for one metric ton of carbon removal (excluding fees) in the currency's smallest unit.
    * `amount_total` - Total for one metric ton of carbon removal (including fees) in the currency's smallest unit.
    """
    @type t :: %__MODULE__{
            amount_fees: integer() | nil,
            amount_subtotal: integer() | nil,
            amount_total: integer() | nil
          }
    defstruct [:amount_fees, :amount_subtotal, :amount_total]
  end

  def __inner_types__ do
    %{
      "current_prices_per_metric_ton" => __MODULE__.CurrentPricesPerMetricTon
    }
  end
end
