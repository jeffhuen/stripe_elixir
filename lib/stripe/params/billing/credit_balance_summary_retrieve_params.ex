# File generated from our OpenAPI spec
defmodule Stripe.Params.Billing.CreditBalanceSummaryRetrieveParams do
  @moduledoc "Parameters for credit balance summary retrieve."

  @typedoc """
  * `customer` - The customer whose credit balance summary you're retrieving. Max length: 5000.
  * `customer_account` - The account representing the customer whose credit balance summary you're retrieving. Max length: 5000.
  * `expand` - Specifies which fields in the response should be expanded.
  * `filter` - The filter criteria for the credit balance summary.
  """
  @type t :: %__MODULE__{
          customer: String.t() | nil,
          customer_account: String.t() | nil,
          expand: [String.t()] | nil,
          filter: __MODULE__.Filter.t()
        }

  defstruct [:customer, :customer_account, :expand, :filter]

  defmodule Filter do
    @moduledoc "Nested parameters."

    @typedoc """
    * `applicability_scope` - The billing credit applicability scope for which to fetch credit balance summary.
    * `credit_grant` - The credit grant for which to fetch credit balance summary. Max length: 5000.
    * `type` - Specify the type of this filter. Possible values: `applicability_scope`, `credit_grant`.
    """
    @type t :: %__MODULE__{
            applicability_scope: __MODULE__.ApplicabilityScope.t() | nil,
            credit_grant: String.t() | nil,
            type: String.t() | nil
          }
    defstruct [:applicability_scope, :credit_grant, :type]
  end
end
