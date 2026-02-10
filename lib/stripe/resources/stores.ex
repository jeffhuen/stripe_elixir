# File generated from our OpenAPI spec
defmodule Stripe.Resources.Stores do
  @moduledoc """
  payment_intent_next_action_konbini_stores
  """

  @typedoc """
  * `familymart` - FamilyMart instruction details. Nullable. Expandable.
  * `lawson` - Lawson instruction details. Nullable. Expandable.
  * `ministop` - Ministop instruction details. Nullable. Expandable.
  * `seicomart` - Seicomart instruction details. Nullable. Expandable.
  """
  @type t :: %__MODULE__{
          familymart: String.t() | map(),
          lawson: String.t() | map(),
          ministop: String.t() | map(),
          seicomart: String.t() | map()
        }

  defstruct [:familymart, :lawson, :ministop, :seicomart]

  @object_name "payment_intent_next_action_konbini_stores"
  def object_name, do: @object_name

  def expandable_fields, do: ["familymart", "lawson", "ministop", "seicomart"]
end
