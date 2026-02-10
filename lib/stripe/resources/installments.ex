# File generated from our OpenAPI spec
defmodule Stripe.Resources.Installments do
  @moduledoc """
  PaymentFlowsInstallmentOptions
  """

  @typedoc """
  * `enabled`
  * `plan` - Expandable.
  """
  @type t :: %__MODULE__{
          enabled: boolean(),
          plan: map() | nil
        }

  defstruct [:enabled, :plan]

  @object_name "payment_flows_installment_options"
  def object_name, do: @object_name

  def expandable_fields, do: ["plan"]
end
