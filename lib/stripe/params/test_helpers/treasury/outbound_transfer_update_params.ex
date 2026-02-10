# File generated from our OpenAPI spec
defmodule Stripe.Params.TestHelpers.Treasury.OutboundTransferUpdateParams do
  @moduledoc "Parameters for outbound transfer update."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `tracking_details` - Details about network-specific tracking information.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          tracking_details: map()
        }

  defstruct [:expand, :tracking_details]

  defmodule TrackingDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `ach` - ACH network tracking details.
    * `type` - The US bank account network used to send funds. Possible values: `ach`, `us_domestic_wire`.
    * `us_domestic_wire` - US domestic wire network tracking details.
    """
    @type t :: %__MODULE__{
            ach: map() | nil,
            type: String.t() | nil,
            us_domestic_wire: map() | nil
          }
    defstruct [:ach, :type, :us_domestic_wire]
  end
end
