# File generated from our OpenAPI spec
defmodule Stripe.Params.QuoteUpdateParams do
  @moduledoc "Parameters for quote update."

  @typedoc """
  * `application_fee_amount` - The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
  * `application_fee_percent` - A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
  * `automatic_tax` - Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
  * `collection_method` - Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`. Possible values: `charge_automatically`, `send_invoice`.
  * `customer` - The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed. Max length: 5000.
  * `customer_account` - The account for which this quote belongs to. A customer or account is required before finalizing the quote. Once specified, it cannot be changed. Max length: 5000.
  * `default_tax_rates` - The tax rates that will apply to any line item that does not have `tax_rates` set.
  * `description` - A description that will be displayed on the quote PDF.
  * `discounts` - The discounts applied to the quote.
  * `expand` - Specifies which fields in the response should be expanded.
  * `expires_at` - A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `footer` - A footer that will be displayed on the quote PDF.
  * `header` - A header that will be displayed on the quote PDF.
  * `invoice_settings` - All invoices will be billed using the specified settings.
  * `line_items` - A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `on_behalf_of` - The account on behalf of which to charge.
  * `subscription_data` - When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
  * `transfer_data` - The data with which to automatically create a Transfer for each of the invoices.
  """
  @type t :: %__MODULE__{
          application_fee_amount: map() | nil,
          application_fee_percent: map() | nil,
          automatic_tax: map() | nil,
          collection_method: String.t() | nil,
          customer: String.t() | nil,
          customer_account: String.t() | nil,
          default_tax_rates: map() | nil,
          description: map() | nil,
          discounts: map() | nil,
          expand: [String.t()] | nil,
          expires_at: integer() | nil,
          footer: map() | nil,
          header: map() | nil,
          invoice_settings: map() | nil,
          line_items: [map()] | nil,
          metadata: map() | nil,
          on_behalf_of: map() | nil,
          subscription_data: map() | nil,
          transfer_data: map() | nil
        }

  defstruct [
    :application_fee_amount,
    :application_fee_percent,
    :automatic_tax,
    :collection_method,
    :customer,
    :customer_account,
    :default_tax_rates,
    :description,
    :discounts,
    :expand,
    :expires_at,
    :footer,
    :header,
    :invoice_settings,
    :line_items,
    :metadata,
    :on_behalf_of,
    :subscription_data,
    :transfer_data
  ]

  defmodule AutomaticTax do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
    * `liability` - The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil,
            liability: map() | nil
          }
    defstruct [:enabled, :liability]
  end

  defmodule InvoiceSettings do
    @moduledoc "Nested parameters."

    @typedoc """
    * `days_until_due` - Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
    * `issuer` - The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
    """
    @type t :: %__MODULE__{
            days_until_due: integer() | nil,
            issuer: map() | nil
          }
    defstruct [:days_until_due, :issuer]
  end

  defmodule LineItems do
    @moduledoc "Nested parameters."

    @typedoc """
    * `discounts` - The discounts applied to this line item.
    * `id` - The ID of an existing line item on the quote. Max length: 5000.
    * `price` - The ID of the price object. One of `price` or `price_data` is required. Max length: 5000.
    * `price_data` - Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline. One of `price` or `price_data` is required.
    * `quantity` - The quantity of the line item.
    * `tax_rates` - The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
    """
    @type t :: %__MODULE__{
            discounts: map() | nil,
            id: String.t() | nil,
            price: String.t() | nil,
            price_data: map() | nil,
            quantity: integer() | nil,
            tax_rates: map() | nil
          }
    defstruct [:discounts, :id, :price, :price_data, :quantity, :tax_rates]
  end

  defmodule SubscriptionData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `description` - The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
    * `effective_date` - When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. The `effective_date` is ignored if it is in the past when the quote is accepted.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
    * `trial_period_days` - Integer representing the number of trial period days before the customer is charged for the first time.
    """
    @type t :: %__MODULE__{
            description: map() | nil,
            effective_date: map() | nil,
            metadata: map() | nil,
            trial_period_days: map() | nil
          }
    defstruct [:description, :effective_date, :metadata, :trial_period_days]
  end
end
