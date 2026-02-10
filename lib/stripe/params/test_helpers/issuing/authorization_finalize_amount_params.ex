# File generated from our OpenAPI spec
defmodule Stripe.Params.TestHelpers.Issuing.AuthorizationFinalizeAmountParams do
  @moduledoc "Parameters for authorization finalize amount."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `final_amount` - The final authorization amount that will be captured by the merchant. This amount is in the authorization currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  * `fleet` - Fleet-specific information for authorizations using Fleet cards.
  * `fuel` - Information about fuel that was purchased with this transaction.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          final_amount: integer(),
          fleet: map() | nil,
          fuel: map() | nil
        }

  defstruct [:expand, :final_amount, :fleet, :fuel]

  defmodule Fleet do
    @moduledoc "Nested parameters."

    @typedoc """
    * `cardholder_prompt_data` - Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
    * `purchase_type` - The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`. Possible values: `fuel_and_non_fuel_purchase`, `fuel_purchase`, `non_fuel_purchase`. Max length: 5000.
    * `reported_breakdown` - More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
    * `service_type` - The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`. Possible values: `full_service`, `non_fuel_transaction`, `self_service`. Max length: 5000.
    """
    @type t :: %__MODULE__{
            cardholder_prompt_data: map() | nil,
            purchase_type: String.t() | nil,
            reported_breakdown: map() | nil,
            service_type: String.t() | nil
          }
    defstruct [:cardholder_prompt_data, :purchase_type, :reported_breakdown, :service_type]
  end

  defmodule Fuel do
    @moduledoc "Nested parameters."

    @typedoc """
    * `industry_product_code` - [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased. Max length: 5000.
    * `quantity_decimal` - The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places. Format: decimal string.
    * `type` - The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`. Possible values: `diesel`, `other`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`. Max length: 5000.
    * `unit` - The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`. Possible values: `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `other`, `pound`, `us_gallon`. Max length: 5000.
    * `unit_cost_decimal` - The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places. Format: decimal string.
    """
    @type t :: %__MODULE__{
            industry_product_code: String.t() | nil,
            quantity_decimal: String.t() | nil,
            type: String.t() | nil,
            unit: String.t() | nil,
            unit_cost_decimal: String.t() | nil
          }
    defstruct [:industry_product_code, :quantity_decimal, :type, :unit, :unit_cost_decimal]
  end
end
