# File generated from our OpenAPI spec
defmodule Stripe.Params.SubscriptionMigrateParams do
  @moduledoc "Parameters for subscription migrate."

  @typedoc """
  * `billing_mode` - Controls how prorations and invoices for subscriptions are calculated and orchestrated.
  * `expand` - Specifies which fields in the response should be expanded.
  """
  @type t :: %__MODULE__{
          billing_mode: __MODULE__.BillingMode.t(),
          expand: [String.t()] | nil
        }

  defstruct [:billing_mode, :expand]

  defmodule BillingMode do
    @moduledoc "Nested parameters."

    @typedoc """
    * `flexible` - Configure behavior for flexible billing mode.
    * `type` - Controls the calculation and orchestration of prorations and invoices for subscriptions. Possible values: `flexible`.
    """
    @type t :: %__MODULE__{
            flexible: __MODULE__.Flexible.t() | nil,
            type: String.t() | nil
          }
    defstruct [:flexible, :type]
  end
end
