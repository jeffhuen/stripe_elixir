# File generated from our OpenAPI spec
defmodule Stripe.Params.Tax.CalculationRetrieveParams do
  @moduledoc "Parameters for calculation retrieve."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil
        }

  defstruct [:expand]
end
