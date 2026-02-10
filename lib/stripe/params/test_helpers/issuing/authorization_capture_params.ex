# File generated from our OpenAPI spec
defmodule Stripe.Params.TestHelpers.Issuing.AuthorizationCaptureParams do
  @moduledoc "Parameters for authorization capture."

  @typedoc """
  * `capture_amount` - The amount to capture from the authorization. If not provided, the full amount of the authorization will be captured. This amount is in the authorization currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  * `close_authorization` - Whether to close the authorization after capture. Defaults to true. Set to false to enable multi-capture flows.
  * `expand` - Specifies which fields in the response should be expanded.
  * `purchase_details` - Additional purchase information that is optionally provided by the merchant.
  """
  @type t :: %__MODULE__{
          capture_amount: integer() | nil,
          close_authorization: boolean() | nil,
          expand: [String.t()] | nil,
          purchase_details: map() | nil
        }

  defstruct [:capture_amount, :close_authorization, :expand, :purchase_details]

  defmodule PurchaseDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `fleet` - Fleet-specific information for transactions using Fleet cards.
    * `flight` - Information about the flight that was purchased with this transaction.
    * `fuel` - Information about fuel that was purchased with this transaction.
    * `lodging` - Information about lodging that was purchased with this transaction.
    * `receipt` - The line items in the purchase.
    * `reference` - A merchant-specific order number. Max length: 5000.
    """
    @type t :: %__MODULE__{
            fleet: map() | nil,
            flight: map() | nil,
            fuel: map() | nil,
            lodging: map() | nil,
            receipt: [map()] | nil,
            reference: String.t() | nil
          }
    defstruct [:fleet, :flight, :fuel, :lodging, :receipt, :reference]
  end
end
