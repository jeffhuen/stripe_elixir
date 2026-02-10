# File generated from our OpenAPI spec
defmodule Stripe.Resources.Multibanco do
  @moduledoc """
  Multibanco resource.
  """

  @typedoc """
  * `entity` - Nullable.
  * `reference` - Nullable.
  * `refund_account_holder_address_city` - Nullable.
  * `refund_account_holder_address_country` - Nullable.
  * `refund_account_holder_address_line1` - Nullable.
  * `refund_account_holder_address_line2` - Nullable.
  * `refund_account_holder_address_postal_code` - Nullable.
  * `refund_account_holder_address_state` - Nullable.
  * `refund_account_holder_name` - Nullable.
  * `refund_iban` - Nullable.
  """
  @type t :: %__MODULE__{
          entity: String.t() | nil,
          reference: String.t() | nil,
          refund_account_holder_address_city: String.t() | nil,
          refund_account_holder_address_country: String.t() | nil,
          refund_account_holder_address_line1: String.t() | nil,
          refund_account_holder_address_line2: String.t() | nil,
          refund_account_holder_address_postal_code: String.t() | nil,
          refund_account_holder_address_state: String.t() | nil,
          refund_account_holder_name: String.t() | nil,
          refund_iban: String.t() | nil
        }

  defstruct [
    :entity,
    :reference,
    :refund_account_holder_address_city,
    :refund_account_holder_address_country,
    :refund_account_holder_address_line1,
    :refund_account_holder_address_line2,
    :refund_account_holder_address_postal_code,
    :refund_account_holder_address_state,
    :refund_account_holder_name,
    :refund_iban
  ]

  @object_name "source_type_multibanco"
  def object_name, do: @object_name
end
