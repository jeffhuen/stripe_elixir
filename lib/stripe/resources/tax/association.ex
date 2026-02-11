# File generated from our OpenAPI spec
defmodule Stripe.Resources.Tax.Association do
  @moduledoc """
  TaxProductResourceTaxAssociation

  A Tax Association exposes the Tax Transactions that Stripe attempted to create on your behalf based on the PaymentIntent input
  """

  @typedoc """
  * `calculation` - The [Tax Calculation](https://docs.stripe.com/api/tax/calculations/object) that was included in PaymentIntent. Max length: 5000.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `tax.association`.
  * `payment_intent` - The [PaymentIntent](https://docs.stripe.com/api/payment_intents/object) that this Tax Association is tracking. Max length: 5000.
  * `tax_transaction_attempts` - Information about the tax transactions linked to this payment intent Nullable. Expandable.
  """
  @type t :: %__MODULE__{
          calculation: String.t(),
          id: String.t(),
          object: String.t(),
          payment_intent: String.t(),
          tax_transaction_attempts: [__MODULE__.TaxTransactionAttempts.t()]
        }

  defstruct [:calculation, :id, :object, :payment_intent, :tax_transaction_attempts]

  @object_name "tax.association"
  def object_name, do: @object_name

  def expandable_fields, do: ["tax_transaction_attempts"]

  defmodule TaxTransactionAttempts do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `committed`
    * `errored`
    * `source` - The source of the tax transaction attempt. This is either a refund or a payment intent. Max length: 5000.
    * `status` - The status of the transaction attempt. This can be `errored` or `committed`. Max length: 5000.
    """
    @type t :: %__MODULE__{
            committed: __MODULE__.Committed.t() | nil,
            errored: __MODULE__.Errored.t() | nil,
            source: String.t() | nil,
            status: String.t() | nil
          }
    defstruct [:committed, :errored, :source, :status]

    defmodule Committed do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `transaction` - The [Tax Transaction](https://docs.stripe.com/api/tax/transaction/object) Max length: 5000.
      """
      @type t :: %__MODULE__{
              transaction: String.t() | nil
            }
      defstruct [:transaction]
    end

    defmodule Errored do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `reason` - Details on why we couldn't commit the tax transaction. Possible values: `another_payment_associated_with_calculation`, `calculation_expired`, `currency_mismatch`, `original_transaction_voided`, `unique_reference_violation`.
      """
      @type t :: %__MODULE__{
              reason: String.t() | nil
            }
      defstruct [:reason]
    end

    def __inner_types__ do
      %{
        "committed" => __MODULE__.Committed,
        "errored" => __MODULE__.Errored
      }
    end
  end

  def __inner_types__ do
    %{
      "tax_transaction_attempts" => __MODULE__.TaxTransactionAttempts
    }
  end
end
