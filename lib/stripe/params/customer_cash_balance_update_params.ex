# File generated from our OpenAPI spec
defmodule Stripe.Params.CustomerCashBalanceUpdateParams do
  @moduledoc "Parameters for customer cash balance update."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `settings` - A hash of settings for this cash balance.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          settings: __MODULE__.Settings.t() | nil
        }

  defstruct [:expand, :settings]

  defmodule Settings do
    @moduledoc "Nested parameters."

    @typedoc """
    * `reconciliation_mode` - Controls how funds transferred by the customer are applied to payment intents and invoices. Valid options are `automatic`, `manual`, or `merchant_default`. For more information about these reconciliation modes, see [Reconciliation](https://docs.stripe.com/payments/customer-balance/reconciliation). Possible values: `automatic`, `manual`, `merchant_default`.
    """
    @type t :: %__MODULE__{
            reconciliation_mode: String.t() | nil
          }
    defstruct [:reconciliation_mode]
  end
end
