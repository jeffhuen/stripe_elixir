# File generated from our OpenAPI spec
defmodule Stripe.Resources.CustomerCashBalanceTransaction do
  @moduledoc """
  CustomerCashBalanceTransaction

  Customers with certain payments enabled have a cash balance, representing funds that were paid
  by the customer to a merchant, but have not yet been allocated to a payment. Cash Balance Transactions
  represent when funds are moved into or out of this balance. This includes funding by the customer, allocation
  to payments, and refunds to the customer.
  """

  @typedoc """
  * `adjusted_for_overdraft` - Expandable.
  * `applied_to_payment` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Max length: 5000.
  * `customer` - The customer whose available cash balance changed as a result of this transaction. Expandable.
  * `customer_account` - The ID of an Account representing a customer whose available cash balance changed as a result of this transaction. Max length: 5000. Nullable.
  * `ending_balance` - The total available cash balance for the specified currency after this transaction was applied. Represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  * `funded` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `net_amount` - The amount by which the cash balance changed, represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). A positive value represents funds being added to the cash balance, a negative value represents funds being removed from the cash balance.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `customer_cash_balance_transaction`.
  * `refunded_from_payment` - Expandable.
  * `transferred_to_balance` - Expandable.
  * `type` - The type of the cash balance transaction. New types may be added in future. See [Customer Balance](https://docs.stripe.com/payments/customer-balance#types) to learn more about these types. Possible values: `adjusted_for_overdraft`, `applied_to_payment`, `funded`, `funding_reversed`, `refunded_from_payment`, `return_canceled`, `return_initiated`, `transferred_to_balance`, `unapplied_from_payment`.
  * `unapplied_from_payment` - Expandable.
  """
  @type t :: %__MODULE__{
          adjusted_for_overdraft: String.t() | map() | nil,
          applied_to_payment: map() | nil,
          created: integer(),
          currency: String.t(),
          customer: String.t() | map(),
          customer_account: String.t(),
          ending_balance: integer(),
          funded: map() | nil,
          id: String.t(),
          livemode: boolean(),
          net_amount: integer(),
          object: String.t(),
          refunded_from_payment: String.t() | map() | nil,
          transferred_to_balance: String.t() | map() | nil,
          type: String.t(),
          unapplied_from_payment: String.t() | map() | nil
        }

  defstruct [
    :adjusted_for_overdraft,
    :applied_to_payment,
    :created,
    :currency,
    :customer,
    :customer_account,
    :ending_balance,
    :funded,
    :id,
    :livemode,
    :net_amount,
    :object,
    :refunded_from_payment,
    :transferred_to_balance,
    :type,
    :unapplied_from_payment
  ]

  @object_name "customer_cash_balance_transaction"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "adjusted_for_overdraft",
      "applied_to_payment",
      "customer",
      "funded",
      "refunded_from_payment",
      "transferred_to_balance",
      "unapplied_from_payment"
    ]
end
