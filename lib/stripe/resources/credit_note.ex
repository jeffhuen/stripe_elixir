# File generated from our OpenAPI spec
defmodule Stripe.Resources.CreditNote do
  @moduledoc """
  CreditNote

  Issue a credit note to adjust an invoice's amount after the invoice is finalized.

  Related guide: [Credit notes](https://docs.stripe.com/billing/invoices/credit-notes)
  """

  @typedoc """
  * `amount` - The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax.
  * `amount_shipping` - This is the sum of all the shipping amounts.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `customer` - ID of the customer. Expandable.
  * `customer_account` - ID of the account representing the customer. Max length: 5000. Nullable.
  * `customer_balance_transaction` - Customer balance transaction related to this credit note. Nullable. Expandable.
  * `discount_amount` - The integer amount in cents (or local equivalent) representing the total amount of discount that was credited.
  * `discount_amounts` - The aggregate amounts calculated per discount for all line items. Expandable.
  * `effective_at` - The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF. Format: Unix timestamp. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `invoice` - ID of the invoice. Expandable.
  * `lines` - Line items that make up the credit note Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `memo` - Customer-facing text that appears on the credit note PDF. Max length: 5000. Nullable.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Nullable.
  * `number` - A unique number that identifies this particular credit note and appears on the PDF of the credit note and its associated invoice. Max length: 5000.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `credit_note`.
  * `out_of_band_amount` - Amount that was credited outside of Stripe. Nullable.
  * `pdf` - The link to download the PDF of the credit note. Max length: 5000.
  * `post_payment_amount` - The amount of the credit note that was refunded to the customer, credited to the customer's balance, credited outside of Stripe, or any combination thereof.
  * `pre_payment_amount` - The amount of the credit note by which the invoice's `amount_remaining` and `amount_due` were reduced.
  * `pretax_credit_amounts` - The pretax credit amounts (ex: discount, credit grants, etc) for all line items. Expandable.
  * `reason` - Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory` Possible values: `duplicate`, `fraudulent`, `order_change`, `product_unsatisfactory`. Nullable.
  * `refunds` - Refunds related to this credit note. Expandable.
  * `shipping_cost` - The details of the cost of shipping, including the ShippingRate applied to the invoice. Nullable. Expandable.
  * `status` - Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://docs.stripe.com/billing/invoices/credit-notes#voiding). Possible values: `issued`, `void`.
  * `subtotal` - The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding exclusive tax and invoice level discounts.
  * `subtotal_excluding_tax` - The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding all tax and invoice level discounts. Nullable.
  * `total` - The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax and all discount.
  * `total_excluding_tax` - The integer amount in cents (or local equivalent) representing the total amount of the credit note, excluding tax, but including discounts. Nullable.
  * `total_taxes` - The aggregate tax information for all line items. Nullable. Expandable.
  * `type` - Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid. Possible values: `mixed`, `post_payment`, `pre_payment`.
  * `voided_at` - The time that the credit note was voided. Format: Unix timestamp. Nullable.
  """
  @type t :: %__MODULE__{
          amount: integer(),
          amount_shipping: integer(),
          created: integer(),
          currency: String.t(),
          customer: map(),
          customer_account: String.t(),
          customer_balance_transaction: String.t() | map(),
          discount_amount: integer(),
          discount_amounts: [map()],
          effective_at: integer(),
          id: String.t(),
          invoice: String.t() | map(),
          lines: map(),
          livemode: boolean(),
          memo: String.t(),
          metadata: map(),
          number: String.t(),
          object: String.t(),
          out_of_band_amount: integer(),
          pdf: String.t(),
          post_payment_amount: integer(),
          pre_payment_amount: integer(),
          pretax_credit_amounts: [map()],
          reason: String.t(),
          refunds: [map()],
          shipping_cost: map(),
          status: String.t(),
          subtotal: integer(),
          subtotal_excluding_tax: integer(),
          total: integer(),
          total_excluding_tax: integer(),
          total_taxes: [map()],
          type: String.t(),
          voided_at: integer()
        }

  defstruct [
    :amount,
    :amount_shipping,
    :created,
    :currency,
    :customer,
    :customer_account,
    :customer_balance_transaction,
    :discount_amount,
    :discount_amounts,
    :effective_at,
    :id,
    :invoice,
    :lines,
    :livemode,
    :memo,
    :metadata,
    :number,
    :object,
    :out_of_band_amount,
    :pdf,
    :post_payment_amount,
    :pre_payment_amount,
    :pretax_credit_amounts,
    :reason,
    :refunds,
    :shipping_cost,
    :status,
    :subtotal,
    :subtotal_excluding_tax,
    :total,
    :total_excluding_tax,
    :total_taxes,
    :type,
    :voided_at
  ]

  @object_name "credit_note"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "customer",
      "customer_balance_transaction",
      "discount_amounts",
      "invoice",
      "lines",
      "pretax_credit_amounts",
      "refunds",
      "shipping_cost",
      "total_taxes"
    ]

  defmodule Lines do
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
      "lines" => __MODULE__.Lines
    }
  end
end
