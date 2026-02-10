# File generated from our OpenAPI spec
defmodule Stripe.Resources.Billing.CreditBalanceTransaction do
  @moduledoc """
  CreditBalanceTransaction

  A credit balance transaction is a resource representing a transaction (either a credit or a debit) against an existing credit grant.
  """

  @typedoc """
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `credit` - Credit details for this credit balance transaction. Only present if type is `credit`. Nullable. Expandable.
  * `credit_grant` - The credit grant associated with this credit balance transaction. Expandable.
  * `debit` - Debit details for this credit balance transaction. Only present if type is `debit`. Nullable. Expandable.
  * `effective_at` - The effective time of this credit balance transaction. Format: Unix timestamp.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `billing.credit_balance_transaction`.
  * `test_clock` - ID of the test clock this credit balance transaction belongs to. Nullable. Expandable.
  * `type` - The type of credit balance transaction (credit or debit). Possible values: `credit`, `debit`. Nullable.
  """
  @type t :: %__MODULE__{
          created: integer(),
          credit: map(),
          credit_grant: String.t() | map(),
          debit: map(),
          effective_at: integer(),
          id: String.t(),
          livemode: boolean(),
          object: String.t(),
          test_clock: String.t() | map(),
          type: String.t()
        }

  defstruct [
    :created,
    :credit,
    :credit_grant,
    :debit,
    :effective_at,
    :id,
    :livemode,
    :object,
    :test_clock,
    :type
  ]

  @object_name "billing.credit_balance_transaction"
  def object_name, do: @object_name

  def expandable_fields, do: ["credit", "credit_grant", "debit", "test_clock"]
end
