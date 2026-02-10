# File generated from our OpenAPI spec
defmodule Stripe.Resources.StripeErrorResponse do
  @moduledoc """
  An error response from the Stripe API
  """

  @typedoc """
  * `error`
  """
  @type t :: %__MODULE__{
          error: map()
        }

  defstruct [:error]

  @object_name "error"
  def object_name, do: @object_name
end
