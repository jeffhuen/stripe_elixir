# File generated from our OpenAPI spec
defmodule Stripe.Resources.BalanceSettings do
  @moduledoc """
  BalanceSettingsResourceBalanceSettings

  Options for customizing account balances and payout settings for a Stripe platform’s connected accounts.
  """

  @typedoc """
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `balance_settings`.
  * `payments` - Expandable.
  """
  @type t :: %__MODULE__{
          object: String.t(),
          payments: map()
        }

  defstruct [:object, :payments]

  @object_name "balance_settings"
  def object_name, do: @object_name

  def expandable_fields, do: ["payments"]
end
