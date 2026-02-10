# File generated from our OpenAPI spec
defmodule Stripe.Resources.FinancialConnections.Account do
  @moduledoc """
  BankConnectionsResourceLinkedAccount

  A Financial Connections Account represents an account that exists outside of Stripe, to which you have been granted some degree of access.
  """

  @typedoc """
  * `account_holder` - The account holder that this account belongs to. Nullable. Expandable.
  * `account_numbers` - Details about the account numbers. Nullable. Expandable.
  * `balance` - The most recent information about the account's balance. Nullable. Expandable.
  * `balance_refresh` - The state of the most recent attempt to refresh the account balance. Nullable. Expandable.
  * `category` - The type of the account. Account category is further divided in `subcategory`. Possible values: `cash`, `credit`, `investment`, `other`.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `display_name` - A human-readable name that has been assigned to this account, either by the account holder or by the institution. Max length: 5000. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `institution_name` - The name of the institution that holds this account. Max length: 5000.
  * `last4` - The last 4 digits of the account number. If present, this will be 4 numeric characters. Max length: 5000. Nullable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `financial_connections.account`.
  * `ownership` - The most recent information about the account's owners. Nullable. Expandable.
  * `ownership_refresh` - The state of the most recent attempt to refresh the account owners. Nullable. Expandable.
  * `permissions` - The list of permissions granted by this account. Nullable.
  * `status` - The status of the link to the account. Possible values: `active`, `disconnected`, `inactive`.
  * `subcategory` - If `category` is `cash`, one of:

  - `checking`
  - `savings`
  - `other`

  If `category` is `credit`, one of:

  - `mortgage`
  - `line_of_credit`
  - `credit_card`
  - `other`

  If `category` is `investment` or `other`, this will be `other`. Possible values: `checking`, `credit_card`, `line_of_credit`, `mortgage`, `other`, `savings`.
  * `subscriptions` - The list of data refresh subscriptions requested on this account. Nullable.
  * `supported_payment_method_types` - The [PaymentMethod type](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type)(s) that can be created from this account.
  * `transaction_refresh` - The state of the most recent attempt to refresh the account transactions. Nullable. Expandable.
  """
  @type t :: %__MODULE__{
          account_holder: map(),
          account_numbers: [map()],
          balance: map(),
          balance_refresh: map(),
          category: String.t(),
          created: integer(),
          display_name: String.t(),
          id: String.t(),
          institution_name: String.t(),
          last4: String.t(),
          livemode: boolean(),
          object: String.t(),
          ownership: String.t() | map(),
          ownership_refresh: map(),
          permissions: [String.t()],
          status: String.t(),
          subcategory: String.t(),
          subscriptions: [String.t()],
          supported_payment_method_types: [String.t()],
          transaction_refresh: map()
        }

  defstruct [
    :account_holder,
    :account_numbers,
    :balance,
    :balance_refresh,
    :category,
    :created,
    :display_name,
    :id,
    :institution_name,
    :last4,
    :livemode,
    :object,
    :ownership,
    :ownership_refresh,
    :permissions,
    :status,
    :subcategory,
    :subscriptions,
    :supported_payment_method_types,
    :transaction_refresh
  ]

  @object_name "financial_connections.account"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "account_holder",
      "account_numbers",
      "balance",
      "balance_refresh",
      "ownership",
      "ownership_refresh",
      "transaction_refresh"
    ]
end
