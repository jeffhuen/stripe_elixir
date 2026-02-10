# File generated from our OpenAPI spec
defmodule Stripe.Params.TestHelpers.Treasury.OutboundPaymentReturnOutboundPaymentParams do
  @moduledoc "Parameters for outbound payment return outbound payment."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `returned_details` - Optional hash to set the return code.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          returned_details: map() | nil
        }

  defstruct [:expand, :returned_details]

  defmodule ReturnedDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `code` - The return code to be set on the OutboundPayment object. Possible values: `account_closed`, `account_frozen`, `bank_account_restricted`, `bank_ownership_changed`, `declined`, `incorrect_account_holder_name`, `invalid_account_number`, `invalid_currency`, `no_account`, `other`.
    """
    @type t :: %__MODULE__{
            code: String.t() | nil
          }
    defstruct [:code]
  end
end
