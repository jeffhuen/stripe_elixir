# File generated from our OpenAPI spec
defmodule Stripe.Resources.StripeErrorResponse do
  @moduledoc """
  An error response from the Stripe API
  """

  @typedoc """
  * `error`
  """
  @type t :: %__MODULE__{
          error: Stripe.Resources.StripeError.t()
        }

  defstruct [:error]

  @object_name "error"
  def object_name, do: @object_name

  def __inner_types__ do
    %{
      "error" => Stripe.Resources.StripeError
    }
  end
end
