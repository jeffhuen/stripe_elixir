# File generated from our OpenAPI spec
defmodule Stripe.Resources.Custom do
  @moduledoc """
  payment_method_custom
  """

  @typedoc """
  * `display_name` - Display name of the Dashboard-only CustomPaymentMethodType. Max length: 5000. Nullable.
  * `logo` - Contains information about the Dashboard-only CustomPaymentMethodType logo. Nullable. Expandable.
  * `type` - ID of the Dashboard-only CustomPaymentMethodType. Not expandable. Max length: 5000.
  """
  @type t :: %__MODULE__{
          display_name: String.t(),
          logo: __MODULE__.Logo.t(),
          type: String.t()
        }

  defstruct [:display_name, :logo, :type]

  @object_name "payment_method_custom"
  def object_name, do: @object_name

  def expandable_fields, do: ["logo"]

  defmodule Logo do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `content_type` - Content type of the Dashboard-only CustomPaymentMethodType logo. Max length: 5000. Nullable.
    * `url` - URL of the Dashboard-only CustomPaymentMethodType logo. Max length: 5000.
    """
    @type t :: %__MODULE__{
            content_type: String.t() | nil,
            url: String.t() | nil
          }
    defstruct [:content_type, :url]
  end

  def __inner_types__ do
    %{
      "logo" => __MODULE__.Logo
    }
  end
end
