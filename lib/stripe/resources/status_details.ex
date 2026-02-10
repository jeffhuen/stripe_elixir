# File generated from our OpenAPI spec
defmodule Stripe.Resources.StatusDetails do
  @moduledoc """
  TreasuryFinancialAccountsResourceStatusDetails
  """

  @typedoc """
  * `closed` - Details related to the closure of this FinancialAccount Nullable. Expandable.
  """
  @type t :: %__MODULE__{
          closed: String.t() | map()
        }

  defstruct [:closed]

  @object_name "treasury_financial_accounts_resource_status_details"
  def object_name, do: @object_name

  def expandable_fields, do: ["closed"]
end
