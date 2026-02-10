# File generated from our OpenAPI spec
defmodule Stripe.Params.Terminal.ReaderConfirmPaymentIntentParams do
  @moduledoc "Parameters for reader confirm payment intent."

  @typedoc """
  * `confirm_config` - Configuration overrides for this confirmation, such as surcharge settings and return URL.
  * `expand` - Specifies which fields in the response should be expanded.
  * `payment_intent` - The ID of the PaymentIntent to confirm. Max length: 5000.
  """
  @type t :: %__MODULE__{
          confirm_config: map() | nil,
          expand: [String.t()] | nil,
          payment_intent: String.t()
        }

  defstruct [:confirm_config, :expand, :payment_intent]

  defmodule ConfirmConfig do
    @moduledoc "Nested parameters."

    @typedoc """
    * `return_url` - The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
    """
    @type t :: %__MODULE__{
            return_url: String.t() | nil
          }
    defstruct [:return_url]
  end
end
