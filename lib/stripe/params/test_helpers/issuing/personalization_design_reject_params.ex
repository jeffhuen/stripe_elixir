# File generated from our OpenAPI spec
defmodule Stripe.Params.TestHelpers.Issuing.PersonalizationDesignRejectParams do
  @moduledoc "Parameters for personalization design reject."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `rejection_reasons` - The reason(s) the personalization design was rejected.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          rejection_reasons: __MODULE__.RejectionReasons.t()
        }

  defstruct [:expand, :rejection_reasons]

  defmodule RejectionReasons do
    @moduledoc "Nested parameters."

    @typedoc """
    * `card_logo` - The reason(s) the card logo was rejected.
    * `carrier_text` - The reason(s) the carrier text was rejected.
    """
    @type t :: %__MODULE__{
            card_logo: [String.t()] | nil,
            carrier_text: [String.t()] | nil
          }
    defstruct [:card_logo, :carrier_text]
  end
end
