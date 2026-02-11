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

  defmodule Plan do
    @moduledoc false

    @typedoc """
    * `count` - For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card. Nullable.
    * `interval` - For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
    One of `month`. Possible values: `month`. Nullable.
    * `type` - Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`. Possible values: `bonus`, `fixed_count`, `revolving`.
    """
    @type t :: %__MODULE__{
            count: integer() | nil,
            interval: String.t() | nil,
            type: String.t() | nil
          }
    defstruct [:count, :interval, :type]
  end

  def __inner_types__ do
    %{
      "plan" => __MODULE__.Plan
    }
  end
end
