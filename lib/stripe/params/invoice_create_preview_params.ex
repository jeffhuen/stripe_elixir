# File generated from our OpenAPI spec
defmodule Stripe.Params.InvoiceCreatePreviewParams do
  @moduledoc "Parameters for invoice create preview."

  @typedoc """
  * `automatic_tax` - Settings for automatic tax lookup for this invoice preview.
  * `currency` - The currency to preview this invoice in. Defaults to that of `customer` if not specified. Format: ISO 4217 currency code.
  * `customer` - The identifier of the customer whose upcoming invoice you're retrieving. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set. Max length: 5000.
  * `customer_account` - The identifier of the account representing the customer whose upcoming invoice you're retrieving. If `automatic_tax` is enabled then one of `customer`, `customer_account`, `customer_details`, `subscription`, or `schedule` must be set. Max length: 5000.
  * `customer_details` - Details about the customer you want to invoice or overrides for an existing customer. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
  * `discounts` - The coupons to redeem into discounts for the invoice preview. If not specified, inherits the discount from the subscription or customer. This works for both coupons directly applied to an invoice and coupons applied to a subscription. Pass an empty string to avoid inheriting any discounts.
  * `expand` - Specifies which fields in the response should be expanded.
  * `invoice_items` - List of invoice items to add or update in the upcoming invoice preview (up to 250).
  * `issuer` - The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
  * `on_behalf_of` - The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://docs.stripe.com/billing/invoices/connect) documentation for details.
  * `preview_mode` - Customizes the types of values to include when calculating the invoice. Defaults to `next` if unspecified. Possible values: `next`, `recurring`.
  * `schedule` - The identifier of the schedule whose upcoming invoice you'd like to retrieve. Cannot be used with subscription or subscription fields. Max length: 5000.
  * `schedule_details` - The schedule creation or modification params to apply as a preview. Cannot be used with `subscription` or `subscription_` prefixed fields.
  * `subscription` - The identifier of the subscription for which you'd like to retrieve the upcoming invoice. If not provided, but a `subscription_details.items` is provided, you will preview creating a subscription with those items. If neither `subscription` nor `subscription_details.items` is provided, you will retrieve the next upcoming invoice from among the customer's subscriptions. Max length: 5000.
  * `subscription_details` - The subscription creation or modification params to apply as a preview. Cannot be used with `schedule` or `schedule_details` fields.
  """
  @type t :: %__MODULE__{
          automatic_tax: __MODULE__.AutomaticTax.t() | nil,
          currency: String.t() | nil,
          customer: String.t() | nil,
          customer_account: String.t() | nil,
          customer_details: __MODULE__.CustomerDetails.t() | nil,
          discounts: map() | nil,
          expand: [String.t()] | nil,
          invoice_items: [__MODULE__.InvoiceItems.t()] | nil,
          issuer: __MODULE__.Issuer.t() | nil,
          on_behalf_of: map() | nil,
          preview_mode: String.t() | nil,
          schedule: String.t() | nil,
          schedule_details: __MODULE__.ScheduleDetails.t() | nil,
          subscription: String.t() | nil,
          subscription_details: __MODULE__.SubscriptionDetails.t() | nil
        }

  defstruct [
    :automatic_tax,
    :currency,
    :customer,
    :customer_account,
    :customer_details,
    :discounts,
    :expand,
    :invoice_items,
    :issuer,
    :on_behalf_of,
    :preview_mode,
    :schedule,
    :schedule_details,
    :subscription,
    :subscription_details
  ]

  defmodule AutomaticTax do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://docs.stripe.com/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
    * `liability` - The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil,
            liability: __MODULE__.Liability.t() | nil
          }
    defstruct [:enabled, :liability]
  end

  defmodule CustomerDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - The customer's address. Learn about [country-specific requirements for calculating tax](https://stripe.com/invoicing/taxes?dashboard-or-api=dashboard#set-up-customer).
    * `shipping` - The customer's shipping information. Appears on invoices emailed to this customer.
    * `tax` - Tax details about the customer.
    * `tax_exempt` - The customer's tax exemption. One of `none`, `exempt`, or `reverse`. Possible values: `exempt`, `none`, `reverse`.
    * `tax_ids` - The customer's tax IDs.
    """
    @type t :: %__MODULE__{
            address: map() | nil,
            shipping: map() | nil,
            tax: __MODULE__.Tax.t() | nil,
            tax_exempt: String.t() | nil,
            tax_ids: [__MODULE__.TaxIds.t()] | nil
          }
    defstruct [:address, :shipping, :tax, :tax_exempt, :tax_ids]
  end

  defmodule InvoiceItems do
    @moduledoc "Nested parameters."

    @typedoc """
    * `amount` - The integer amount in cents (or local equivalent) of previewed invoice item.
    * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Only applicable to new invoice items. Format: ISO 4217 currency code.
    * `description` - An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking. Max length: 5000.
    * `discountable` - Explicitly controls whether discounts apply to this invoice item. Defaults to true, except for negative invoice items.
    * `discounts` - The coupons to redeem into discounts for the invoice item in the preview.
    * `invoiceitem` - The ID of the invoice item to update in preview. If not specified, a new invoice item will be added to the preview of the upcoming invoice. Max length: 5000.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `period` - The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://docs.stripe.com/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://docs.stripe.com/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
    * `price` - The ID of the price object. One of `price` or `price_data` is required. Max length: 5000.
    * `price_data` - Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline. One of `price` or `price_data` is required.
    * `quantity` - Non-negative integer. The quantity of units for the invoice item.
    * `tax_behavior` - Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed. Possible values: `exclusive`, `inclusive`, `unspecified`.
    * `tax_code` - A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
    * `tax_rates` - The tax rates that apply to the item. When set, any `default_tax_rates` do not apply to this item.
    * `unit_amount` - The integer unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This unit_amount will be multiplied by the quantity to get the full amount. If you want to apply a credit to the customer's account, pass a negative unit_amount.
    * `unit_amount_decimal` - Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set. Format: decimal string.
    """
    @type t :: %__MODULE__{
            amount: integer() | nil,
            currency: String.t() | nil,
            description: String.t() | nil,
            discountable: boolean() | nil,
            discounts: map() | nil,
            invoiceitem: String.t() | nil,
            metadata: map() | nil,
            period: __MODULE__.Period.t() | nil,
            price: String.t() | nil,
            price_data: __MODULE__.PriceData.t() | nil,
            quantity: integer() | nil,
            tax_behavior: String.t() | nil,
            tax_code: map() | nil,
            tax_rates: map() | nil,
            unit_amount: integer() | nil,
            unit_amount_decimal: String.t() | nil
          }
    defstruct [
      :amount,
      :currency,
      :description,
      :discountable,
      :discounts,
      :invoiceitem,
      :metadata,
      :period,
      :price,
      :price_data,
      :quantity,
      :tax_behavior,
      :tax_code,
      :tax_rates,
      :unit_amount,
      :unit_amount_decimal
    ]
  end

  defmodule Issuer do
    @moduledoc "Nested parameters."

    @typedoc """
    * `account` - The connected account being referenced when `type` is `account`.
    * `type` - Type of the account referenced in the request. Possible values: `account`, `self`.
    """
    @type t :: %__MODULE__{
            account: String.t() | nil,
            type: String.t() | nil
          }
    defstruct [:account, :type]
  end

  defmodule ScheduleDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `billing_mode` - Controls how prorations and invoices for subscriptions are calculated and orchestrated.
    * `end_behavior` - Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription. Possible values: `cancel`, `release`.
    * `phases` - List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
    * `proration_behavior` - In cases where the `schedule_details` params update the currently active phase, specifies if and how to prorate at the time of the request. Possible values: `always_invoice`, `create_prorations`, `none`.
    """
    @type t :: %__MODULE__{
            billing_mode: __MODULE__.BillingMode.t() | nil,
            end_behavior: String.t() | nil,
            phases: [__MODULE__.Phases.t()] | nil,
            proration_behavior: String.t() | nil
          }
    defstruct [:billing_mode, :end_behavior, :phases, :proration_behavior]
  end

  defmodule SubscriptionDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `billing_cycle_anchor` - For new subscriptions, a future timestamp to anchor the subscription's [billing cycle](https://docs.stripe.com/subscriptions/billing-cycle). This is used to determine the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. For existing subscriptions, the value can only be set to `now` or `unchanged`.
    * `billing_mode` - Controls how prorations and invoices for subscriptions are calculated and orchestrated.
    * `cancel_at` - A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
    * `cancel_at_period_end` - Indicate whether this subscription should cancel at the end of the current period (`current_period_end`). Defaults to `false`.
    * `cancel_now` - This simulates the subscription being canceled or expired immediately.
    * `default_tax_rates` - If provided, the invoice returned will preview updating or creating a subscription with these default tax rates. The default tax rates will apply to any line item that does not have `tax_rates` set.
    * `items` - A list of up to 20 subscription items, each with an attached price.
    * `proration_behavior` - Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`. Possible values: `always_invoice`, `create_prorations`, `none`.
    * `proration_date` - If previewing an update to a subscription, and doing proration, `subscription_details.proration_date` forces the proration to be calculated as though the update was done at the specified time. The time given must be within the current subscription period and within the current phase of the schedule backing this subscription, if the schedule exists. If set, `subscription`, and one of `subscription_details.items`, or `subscription_details.trial_end` are required. Also, `subscription_details.proration_behavior` cannot be set to 'none'. Format: Unix timestamp.
    * `resume_at` - For paused subscriptions, setting `subscription_details.resume_at` to `now` will preview the invoice that will be generated if the subscription is resumed. Possible values: `now`. Max length: 5000.
    * `start_date` - Date a subscription is intended to start (can be future or past). Format: Unix timestamp.
    * `trial_end` - If provided, the invoice returned will preview updating or creating a subscription with that trial end. If set, one of `subscription_details.items` or `subscription` is required.
    """
    @type t :: %__MODULE__{
            billing_cycle_anchor: map() | nil,
            billing_mode: __MODULE__.BillingMode.t() | nil,
            cancel_at: map() | nil,
            cancel_at_period_end: boolean() | nil,
            cancel_now: boolean() | nil,
            default_tax_rates: map() | nil,
            items: [__MODULE__.Items.t()] | nil,
            proration_behavior: String.t() | nil,
            proration_date: integer() | nil,
            resume_at: String.t() | nil,
            start_date: integer() | nil,
            trial_end: map() | nil
          }
    defstruct [
      :billing_cycle_anchor,
      :billing_mode,
      :cancel_at,
      :cancel_at_period_end,
      :cancel_now,
      :default_tax_rates,
      :items,
      :proration_behavior,
      :proration_date,
      :resume_at,
      :start_date,
      :trial_end
    ]
  end
end
