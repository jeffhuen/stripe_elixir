# File generated from our OpenAPI spec
defmodule Stripe.Resources.PayoutsConfig do
  @moduledoc """
  ConnectEmbeddedPayoutsConfig
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

  @object_name "connect_embedded_payouts_config"
  def object_name, do: @object_name

  def expandable_fields, do: ["features"]

  def __inner_types__ do
    %{
      "features" => Stripe.Resources.PayoutsFeatures
    }
  end
end
