# File generated from our OpenAPI spec
defmodule Stripe.Params.ApplePayDomainCreateParams do
  @moduledoc "Parameters for apple pay domain create."

  @typedoc """
  * `domain_name`
  * `expand` - Specifies which fields in the response should be expanded.
  """
  @type t :: %__MODULE__{
          domain_name: String.t(),
          expand: [String.t()] | nil
        }

  defstruct [:domain_name, :expand]
end
