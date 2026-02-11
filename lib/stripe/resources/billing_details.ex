# File generated from our OpenAPI spec
defmodule Stripe.Resources.BillingDetails do
  @moduledoc """
  TreasurySharedResourceBillingDetails
  """

  @typedoc """
  * `address` - Expandable.
  * `email` - Email address. Max length: 5000. Nullable.
  * `name` - Full name. Max length: 5000. Nullable.
  """
  @type t :: %__MODULE__{
          address: map(),
          email: String.t(),
          name: String.t()
        }

  defstruct [:address, :email, :name]

  @object_name "treasury_shared_resource_billing_details"
  def object_name, do: @object_name

  def expandable_fields, do: ["address"]

  def __inner_types__ do
    %{
      "address" => Stripe.Resources.Address
    }
  end
end
