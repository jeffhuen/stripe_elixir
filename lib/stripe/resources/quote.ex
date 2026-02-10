# File generated from our OpenAPI spec
defmodule Stripe.Resources.Quote do
  @moduledoc """
  Quote

  A Quote is a way to model prices that you'd like to provide to a customer.
  Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  """

  @typedoc """
  * `amount_subtotal` - Total before any discounts or taxes are applied.
  * `amount_total` - Total after discounts and taxes are applied.
  * `application` - ID of the Connect Application that created the quote. Nullable. Expandable.
  * `application_fee_amount` - The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote. Nullable.
  * `application_fee_percent` - A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote. Nullable.
  * `automatic_tax` - Expandable.
  * `collection_method` - Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`. Possible values: `charge_automatically`, `send_invoice`.
  * `computed` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Max length: 5000. Nullable.
  * `customer` - The customer who received this quote. A customer is required to finalize the quote. Once specified, you can't change it. Nullable. Expandable.
  * `customer_account` - The account representing the customer who received this quote. A customer or account is required to finalize the quote. Once specified, you can't change it. Max length: 5000. Nullable.
  * `default_tax_rates` - The tax rates applied to this quote. Expandable.
  * `description` - A description that will be displayed on the quote PDF. Max length: 5000. Nullable.
  * `discounts` - The discounts applied to this quote. Expandable.
  * `expires_at` - The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `footer` - A footer that will be displayed on the quote PDF. Max length: 5000. Nullable.
  * `from_quote` - Details of the quote that was cloned. See the [cloning documentation](https://docs.stripe.com/quotes/clone) for more details. Nullable. Expandable.
  * `header` - A header that will be displayed on the quote PDF. Max length: 5000. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `invoice` - The invoice that was created from this quote. Nullable. Expandable.
  * `invoice_settings` - Expandable.
  * `line_items` - A list of items the customer is being quoted for. Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `number` - A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://docs.stripe.com/quotes/overview#finalize). Max length: 5000. Nullable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `quote`.
  * `on_behalf_of` - The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details. Nullable. Expandable.
  * `status` - The status of the quote. Possible values: `accepted`, `canceled`, `draft`, `open`.
  * `status_transitions` - Expandable.
  * `subscription` - The subscription that was created or updated from this quote. Nullable. Expandable.
  * `subscription_data` - Expandable.
  * `subscription_schedule` - The subscription schedule that was created or updated from this quote. Nullable. Expandable.
  * `test_clock` - ID of the test clock this quote belongs to. Nullable. Expandable.
  * `total_details` - Expandable.
  * `transfer_data` - The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices. Nullable. Expandable.
  """
  @type t :: %__MODULE__{
          amount_subtotal: integer(),
          amount_total: integer(),
          application: map(),
          application_fee_amount: integer(),
          application_fee_percent: float(),
          automatic_tax: map(),
          collection_method: String.t(),
          computed: map(),
          created: integer(),
          currency: String.t(),
          customer: map(),
          customer_account: String.t(),
          default_tax_rates: [String.t() | map()] | nil,
          description: String.t(),
          discounts: [String.t() | map()],
          expires_at: integer(),
          footer: String.t(),
          from_quote: map(),
          header: String.t(),
          id: String.t(),
          invoice: map(),
          invoice_settings: map(),
          line_items: map() | nil,
          livemode: boolean(),
          metadata: map(),
          number: String.t(),
          object: String.t(),
          on_behalf_of: String.t() | map(),
          status: String.t(),
          status_transitions: map(),
          subscription: String.t() | map(),
          subscription_data: map(),
          subscription_schedule: String.t() | map(),
          test_clock: String.t() | map(),
          total_details: map(),
          transfer_data: map()
        }

  defstruct [
    :amount_subtotal,
    :amount_total,
    :application,
    :application_fee_amount,
    :application_fee_percent,
    :automatic_tax,
    :collection_method,
    :computed,
    :created,
    :currency,
    :customer,
    :customer_account,
    :default_tax_rates,
    :description,
    :discounts,
    :expires_at,
    :footer,
    :from_quote,
    :header,
    :id,
    :invoice,
    :invoice_settings,
    :line_items,
    :livemode,
    :metadata,
    :number,
    :object,
    :on_behalf_of,
    :status,
    :status_transitions,
    :subscription,
    :subscription_data,
    :subscription_schedule,
    :test_clock,
    :total_details,
    :transfer_data
  ]

  @object_name "quote"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "application",
      "automatic_tax",
      "computed",
      "customer",
      "default_tax_rates",
      "discounts",
      "from_quote",
      "invoice",
      "invoice_settings",
      "line_items",
      "on_behalf_of",
      "status_transitions",
      "subscription",
      "subscription_data",
      "subscription_schedule",
      "test_clock",
      "total_details",
      "transfer_data"
    ]

  defmodule LineItems do
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
      "line_items" => __MODULE__.LineItems
    }
  end
end
