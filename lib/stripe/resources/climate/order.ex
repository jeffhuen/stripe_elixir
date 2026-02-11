# File generated from our OpenAPI spec
defmodule Stripe.Resources.Climate.Order do
  @moduledoc """
  ClimateRemovalsOrders

  Orders represent your intent to purchase a particular Climate product. When you create an order, the
  payment is deducted from your merchant balance.
  """

  @typedoc """
  * `amount_fees` - Total amount of [Frontier](https://frontierclimate.com/)'s service fees in the currency's smallest unit.
  * `amount_subtotal` - Total amount of the carbon removal in the currency's smallest unit.
  * `amount_total` - Total amount of the order including fees in the currency's smallest unit.
  * `beneficiary` - Expandable.
  * `canceled_at` - Time at which the order was canceled. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `cancellation_reason` - Reason for the cancellation of this order. Possible values: `expired`, `product_unavailable`, `requested`. Nullable.
  * `certificate` - For delivered orders, a URL to a delivery certificate for the order. Max length: 5000. Nullable.
  * `confirmed_at` - Time at which the order was confirmed. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase, representing the currency for this order. Max length: 5000.
  * `delayed_at` - Time at which the order's expected_delivery_year was delayed. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `delivered_at` - Time at which the order was delivered. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `delivery_details` - Details about the delivery of carbon removal for this order. Expandable.
  * `expected_delivery_year` - The year this order is expected to be delivered.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `metric_tons` - Quantity of carbon removal that is included in this order. Format: decimal string.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `climate.order`.
  * `product` - Unique ID for the Climate `Product` this order is purchasing. Expandable.
  * `product_substituted_at` - Time at which the order's product was substituted for a different product. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `status` - The current status of this order. Possible values: `awaiting_funds`, `canceled`, `confirmed`, `delivered`, `open`.
  """
  @type t :: %__MODULE__{
          amount_fees: integer(),
          amount_subtotal: integer(),
          amount_total: integer(),
          beneficiary: map() | nil,
          canceled_at: integer(),
          cancellation_reason: String.t(),
          certificate: String.t(),
          confirmed_at: integer(),
          created: integer(),
          currency: String.t(),
          delayed_at: integer(),
          delivered_at: integer(),
          delivery_details: [map()],
          expected_delivery_year: integer(),
          id: String.t(),
          livemode: boolean(),
          metadata: map(),
          metric_tons: String.t(),
          object: String.t(),
          product: String.t() | map(),
          product_substituted_at: integer(),
          status: String.t()
        }

  defstruct [
    :amount_fees,
    :amount_subtotal,
    :amount_total,
    :beneficiary,
    :canceled_at,
    :cancellation_reason,
    :certificate,
    :confirmed_at,
    :created,
    :currency,
    :delayed_at,
    :delivered_at,
    :delivery_details,
    :expected_delivery_year,
    :id,
    :livemode,
    :metadata,
    :metric_tons,
    :object,
    :product,
    :product_substituted_at,
    :status
  ]

  @object_name "climate.order"
  def object_name, do: @object_name

  def expandable_fields, do: ["beneficiary", "delivery_details", "product"]

  defmodule Beneficiary do
    @moduledoc false

    @typedoc """
    * `public_name` - Publicly displayable name for the end beneficiary of carbon removal. Max length: 5000.
    """
    @type t :: %__MODULE__{
            public_name: String.t() | nil
          }
    defstruct [:public_name]
  end

  defmodule DeliveryDetails do
    @moduledoc false

    @typedoc """
    * `delivered_at` - Time at which the delivery occurred. Measured in seconds since the Unix epoch. Format: Unix timestamp.
    * `location` - Specific location of this delivery. Nullable.
    * `metric_tons` - Quantity of carbon removal supplied by this delivery. Max length: 5000.
    * `registry_url` - Once retired, a URL to the registry entry for the tons from this delivery. Max length: 5000. Nullable.
    * `supplier`
    """
    @type t :: %__MODULE__{
            delivered_at: integer() | nil,
            location: map() | nil,
            metric_tons: String.t() | nil,
            registry_url: String.t() | nil,
            supplier: map() | nil
          }
    defstruct [:delivered_at, :location, :metric_tons, :registry_url, :supplier]

    defmodule Location do
      @moduledoc false

      @typedoc """
      * `city` - The city where the supplier is located. Max length: 5000. Nullable.
      * `country` - Two-letter ISO code representing the country where the supplier is located. Max length: 5000.
      * `latitude` - The geographic latitude where the supplier is located. Nullable.
      * `longitude` - The geographic longitude where the supplier is located. Nullable.
      * `region` - The state/county/province/region where the supplier is located. Max length: 5000. Nullable.
      """
      @type t :: %__MODULE__{
              city: String.t() | nil,
              country: String.t() | nil,
              latitude: float() | nil,
              longitude: float() | nil,
              region: String.t() | nil
            }
      defstruct [:city, :country, :latitude, :longitude, :region]
    end

    def __inner_types__ do
      %{
        "location" => __MODULE__.Location
      }
    end
  end

  def __inner_types__ do
    %{
      "beneficiary" => __MODULE__.Beneficiary,
      "delivery_details" => __MODULE__.DeliveryDetails
    }
  end
end
