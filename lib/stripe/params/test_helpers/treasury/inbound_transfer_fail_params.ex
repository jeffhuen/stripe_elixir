# File generated from our OpenAPI spec
defmodule Stripe.Params.TestHelpers.Treasury.InboundTransferFailParams do
  @moduledoc "Parameters for inbound transfer fail."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `failure_details` - Details about a failed InboundTransfer.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          failure_details: map() | nil
        }

  defstruct [:expand, :failure_details]

  defmodule FailureDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `code` - Reason for the failure. Possible values: `account_closed`, `account_frozen`, `bank_account_restricted`, `bank_ownership_changed`, `debit_not_authorized`, `incorrect_account_holder_address`, `incorrect_account_holder_name`, `incorrect_account_holder_tax_id`, `insufficient_funds`, `invalid_account_number`, `invalid_currency`, `no_account`, `other`.
    """
    @type t :: %__MODULE__{
            code: String.t() | nil
          }
    defstruct [:code]
  end
end
