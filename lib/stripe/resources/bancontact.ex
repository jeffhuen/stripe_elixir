# File generated from our OpenAPI spec
defmodule Stripe.Resources.Bancontact do
  @moduledoc """
  Bancontact resource.
  """

  @typedoc """
  * `bank_code` - Nullable.
  * `bank_name` - Nullable.
  * `bic` - Nullable.
  * `iban_last4` - Nullable.
  * `preferred_language` - Nullable.
  * `statement_descriptor` - Nullable.
  """
  @type t :: %__MODULE__{
          bank_code: String.t() | nil,
          bank_name: String.t() | nil,
          bic: String.t() | nil,
          iban_last4: String.t() | nil,
          preferred_language: String.t() | nil,
          statement_descriptor: String.t() | nil
        }

  defstruct [
    :bank_code,
    :bank_name,
    :bic,
    :iban_last4,
    :preferred_language,
    :statement_descriptor
  ]

  @object_name "source_type_bancontact"
  def object_name, do: @object_name
end
