# File generated from our OpenAPI spec
defmodule Stripe.Params.PaymentAttemptRecordRetrieveParams do
  @moduledoc "Parameters for payment attempt record retrieve."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil
        }

  defstruct [:expand]
end
