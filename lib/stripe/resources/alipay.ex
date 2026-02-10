# File generated from our OpenAPI spec
defmodule Stripe.Resources.Alipay do
  @moduledoc """
  Alipay resource.
  """

  @typedoc """
  * `data_string` - Nullable.
  * `native_url` - Nullable.
  * `statement_descriptor` - Nullable.
  """
  @type t :: %__MODULE__{
          data_string: String.t() | nil,
          native_url: String.t() | nil,
          statement_descriptor: String.t() | nil
        }

  defstruct [:data_string, :native_url, :statement_descriptor]

  @object_name "source_type_alipay"
  def object_name, do: @object_name
end
