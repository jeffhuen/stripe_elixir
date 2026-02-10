# File generated from our OpenAPI spec
defmodule Stripe.Params.TestHelpers.TestClockRetrieveParams do
  @moduledoc "Parameters for test clock retrieve."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil
        }

  defstruct [:expand]
end
