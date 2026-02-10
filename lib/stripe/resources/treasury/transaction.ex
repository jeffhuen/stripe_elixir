# File generated from our OpenAPI spec
defmodule Stripe.Resources.Treasury.Transaction do
  @moduledoc """
  TreasuryTransactionsResourceTransaction

  Transactions represent changes to a [FinancialAccount's](https://api.stripe.com#financial_accounts) balance.
  """

  @typedoc """
  * `amount` - Amount (in cents) transferred.
  * `balance_impact` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 5000.
  * `entries` - A list of TransactionEntries that are part of this Transaction. This cannot be expanded in any list endpoints. Nullable. Expandable.
  * `financial_account` - The FinancialAccount associated with this object. Max length: 5000.
  * `flow` - ID of the flow that created the Transaction. Max length: 5000. Nullable.
  * `flow_details` - Details of the flow that created the Transaction. Nullable. Expandable.
  * `flow_type` - Type of the flow that created the Transaction. Possible values: `credit_reversal`, `debit_reversal`, `inbound_transfer`, `issuing_authorization`, `other`, `outbound_payment`, `outbound_transfer`, `received_credit`, `received_debit`.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `treasury.transaction`.
  * `status` - Status of the Transaction. Possible values: `open`, `posted`, `void`.
  * `status_transitions` - Expandable.
  """
  @type t :: %__MODULE__{
          amount: integer(),
          balance_impact: map(),
          created: integer(),
          currency: String.t(),
          description: String.t(),
          entries: map() | nil,
          financial_account: String.t(),
          flow: String.t(),
          flow_details: map() | nil,
          flow_type: String.t(),
          id: String.t(),
          livemode: boolean(),
          object: String.t(),
          status: String.t(),
          status_transitions: map()
        }

  defstruct [
    :amount,
    :balance_impact,
    :created,
    :currency,
    :description,
    :entries,
    :financial_account,
    :flow,
    :flow_details,
    :flow_type,
    :id,
    :livemode,
    :object,
    :status,
    :status_transitions
  ]

  @object_name "treasury.transaction"
  def object_name, do: @object_name

  def expandable_fields, do: ["balance_impact", "entries", "flow_details", "status_transitions"]

  defmodule Entries do
    @moduledoc false

    @typedoc """
    * `data` - Details about each object.
    * `has_more` - True if this list has another page of items after this one that can be fetched.
    * `object` - String representing the object's type. Objects of the same type share the same value. Always has the value `list`. Possible values: `list`.
    * `url` - The URL where this list can be accessed. Max length: 5000.
    """
    @type t :: %__MODULE__{
            data: [map()] | nil,
            has_more: boolean() | nil,
            object: String.t() | nil,
            url: String.t() | nil
          }
    defstruct [:data, :has_more, :object, :url]
  end

  def __inner_types__ do
    %{
      "entries" => __MODULE__.Entries
    }
  end
end
