# File generated from our OpenAPI spec
defmodule Stripe.Params.InvoiceRenderingTemplateRetrieveParams do
  @moduledoc "Parameters for invoice rendering template retrieve."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `version`
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          version: integer() | nil
        }

  defstruct [:expand, :version]
end
