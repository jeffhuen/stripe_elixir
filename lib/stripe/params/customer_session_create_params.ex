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
          components: map(),
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
            buy_button: map() | nil,
            customer_sheet: map() | nil,
            mobile_payment_element: map() | nil,
            payment_element: map() | nil,
            pricing_table: map() | nil
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
