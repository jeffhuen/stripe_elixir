# File generated from our OpenAPI spec
defmodule Stripe.Params.CustomerSessionCreateParams do
  @moduledoc "Parameters for customer session create."

  @typedoc """
  * `components` - Configuration for each component. At least 1 component must be enabled.
  * `customer` - The ID of an existing customer for which to create the Customer Session. Max length: 5000.
  * `customer_account` - The ID of an existing Account for which to create the Customer Session. Max length: 5000.
  * `expand` - Specifies which fields in the response should be expanded.
  """
  @type t :: %__MODULE__{
          components: __MODULE__.Components.t(),
          customer: String.t() | nil,
          customer_account: String.t() | nil,
          expand: [String.t()] | nil
        }

  defstruct [:components, :customer, :customer_account, :expand]

  defmodule Components do
    @moduledoc "Nested parameters."

    @typedoc """
    * `buy_button` - Configuration for buy button.
    * `customer_sheet` - Configuration for the customer sheet.
    * `mobile_payment_element` - Configuration for the mobile payment element.
    * `payment_element` - Configuration for the Payment Element.
    * `pricing_table` - Configuration for the pricing table.
    """
    @type t :: %__MODULE__{
            buy_button: __MODULE__.BuyButton.t() | nil,
            customer_sheet: __MODULE__.CustomerSheet.t() | nil,
            mobile_payment_element: __MODULE__.MobilePaymentElement.t() | nil,
            payment_element: __MODULE__.PaymentElement.t() | nil,
            pricing_table: __MODULE__.PricingTable.t() | nil
          }
    defstruct [
      :buy_button,
      :customer_sheet,
      :mobile_payment_element,
      :payment_element,
      :pricing_table
    ]
  end
end
