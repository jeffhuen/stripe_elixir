# File generated from our OpenAPI spec
defmodule Stripe.Resources.ThreeDSecure do
  @moduledoc """
  ThreeDSecure resource.
  """

  @typedoc """
  * `address_line1_check` - Nullable.
  * `address_zip_check` - Nullable.
  * `authenticated` - Nullable.
  * `brand` - Nullable.
  * `card` - Nullable.
  * `country` - Nullable.
  * `customer` - Nullable.
  * `cvc_check` - Nullable.
  * `description`
  * `dynamic_last4` - Nullable.
  * `exp_month` - Nullable.
  * `exp_year` - Nullable.
  * `fingerprint`
  * `funding` - Nullable.
  * `iin`
  * `issuer`
  * `last4` - Nullable.
  * `name` - Nullable.
  * `three_d_secure`
  * `tokenization_method` - Nullable.
  """
  @type t :: %__MODULE__{
          address_line1_check: String.t() | nil,
          address_zip_check: String.t() | nil,
          authenticated: boolean() | nil,
          brand: String.t() | nil,
          card: String.t() | nil,
          country: String.t() | nil,
          customer: String.t() | nil,
          cvc_check: String.t() | nil,
          description: String.t() | nil,
          dynamic_last4: String.t() | nil,
          exp_month: integer() | nil,
          exp_year: integer() | nil,
          fingerprint: String.t() | nil,
          funding: String.t() | nil,
          iin: String.t() | nil,
          issuer: String.t() | nil,
          last4: String.t() | nil,
          name: String.t() | nil,
          three_d_secure: String.t() | nil,
          tokenization_method: String.t() | nil
        }

  defstruct [
    :address_line1_check,
    :address_zip_check,
    :authenticated,
    :brand,
    :card,
    :country,
    :customer,
    :cvc_check,
    :description,
    :dynamic_last4,
    :exp_month,
    :exp_year,
    :fingerprint,
    :funding,
    :iin,
    :issuer,
    :last4,
    :name,
    :three_d_secure,
    :tokenization_method
  ]

  @object_name "source_type_three_d_secure"
  def object_name, do: @object_name
end
