# File generated from our OpenAPI spec
defmodule Stripe.Resources.FinancialAccountTransactionsConfig do
  @moduledoc """
  ConnectEmbeddedFinancialAccountTransactionsConfigClaim
  """

  @typedoc """
  * `enabled` - Whether the embedded component is enabled.
  * `features` - Expandable.
  """
  @type t :: %__MODULE__{
          enabled: boolean(),
          features: map()
        }

  defstruct [:enabled, :features]

  @object_name "connect_embedded_financial_account_transactions_config_claim"
  def object_name, do: @object_name

  def expandable_fields, do: ["features"]

  def __inner_types__ do
    %{
      "features" => Stripe.Resources.FinancialAccountTransactionsFeatures
    }
  end
end
