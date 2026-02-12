# File generated from our OpenAPI spec
defmodule Stripe.Params.SubscriptionScheduleUpdateParams do
  @moduledoc "Parameters for subscription schedule update."

  @typedoc """
  * `default_settings` - Object representing the subscription schedule's default settings.
  * `end_behavior` - Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription. Possible values: `cancel`, `none`, `release`, `renew`.
  * `expand` - Specifies which fields in the response should be expanded.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `phases` - List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase. Note that past phases can be omitted.
  * `proration_behavior` - If the update changes the billing configuration (item price, quantity, etc.) of the current phase, indicates how prorations from this change should be handled. The default value is `create_prorations`. Possible values: `always_invoice`, `create_prorations`, `none`.
  """
  @type t :: %__MODULE__{
          default_settings: __MODULE__.DefaultSettings.t() | nil,
          end_behavior: String.t() | nil,
          expand: [String.t()] | nil,
          metadata: map() | nil,
          phases: [__MODULE__.Phases.t()] | nil,
          proration_behavior: String.t() | nil
        }

  defstruct [:default_settings, :end_behavior, :expand, :metadata, :phases, :proration_behavior]

  defmodule DefaultSettings do
    @moduledoc "Nested parameters."

    @typedoc """
    * `application_fee_percent` - A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
    * `automatic_tax` - Default settings for automatic tax computation.
    * `billing_cycle_anchor` - Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle). Possible values: `automatic`, `phase_start`.
    * `billing_thresholds` - Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
    * `collection_method` - Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation. Possible values: `charge_automatically`, `send_invoice`.
    * `default_payment_method` - ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings. Max length: 5000.
    * `description` - Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
    * `invoice_settings` - All invoices will be billed using the specified settings.
    * `on_behalf_of` - The account on behalf of which to charge, for each of the associated subscription's invoices.
    * `transfer_data` - The data with which to automatically create a Transfer for each of the associated subscription's invoices.
    """
    @type t :: %__MODULE__{
            application_fee_percent: float() | nil,
            automatic_tax: __MODULE__.AutomaticTax.t() | nil,
            billing_cycle_anchor: String.t() | nil,
            billing_thresholds: map() | nil,
            collection_method: String.t() | nil,
            default_payment_method: String.t() | nil,
            description: map() | nil,
            invoice_settings: __MODULE__.InvoiceSettings.t() | nil,
            on_behalf_of: map() | nil,
            transfer_data: map() | nil
          }
    defstruct [
      :application_fee_percent,
      :automatic_tax,
      :billing_cycle_anchor,
      :billing_thresholds,
      :collection_method,
      :default_payment_method,
      :description,
      :invoice_settings,
      :on_behalf_of,
      :transfer_data
    ]
  end

  defmodule Phases do
    @moduledoc "Nested parameters."

    @typedoc """
    * `add_invoice_items` - A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
    * `application_fee_percent` - A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
    * `automatic_tax` - Automatic tax settings for this phase.
    * `billing_cycle_anchor` - Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle). Possible values: `automatic`, `phase_start`.
    * `billing_thresholds` - Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
    * `collection_method` - Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation. Possible values: `charge_automatically`, `send_invoice`.
    * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
    * `default_payment_method` - ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings. Max length: 5000.
    * `default_tax_rates` - A list of [Tax Rate](https://docs.stripe.com/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://docs.stripe.com/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://docs.stripe.com/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
    * `description` - Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
    * `discounts` - The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
    * `duration` - The number of intervals the phase should last. If set, `end_date` must not be set.
    * `end_date` - The date at which this phase of the subscription schedule ends. If set, `duration` must not be set.
    * `invoice_settings` - All invoices will be billed using the specified settings.
    * `items` - List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
    * `on_behalf_of` - The account on behalf of which to charge, for each of the associated subscription's invoices.
    * `proration_behavior` - Controls whether the subscription schedule should create [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when transitioning to this phase if there is a difference in billing configuration. It's different from the request-level [proration_behavior](https://docs.stripe.com/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration (item price, quantity, etc.) of the current phase. Possible values: `always_invoice`, `create_prorations`, `none`.
    * `start_date` - The date at which this phase of the subscription schedule starts or `now`. Must be set on the first phase.
    * `transfer_data` - The data with which to automatically create a Transfer for each of the associated subscription's invoices.
    * `trial` - If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
    * `trial_end` - Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
    """
    @type t :: %__MODULE__{
            add_invoice_items: [__MODULE__.AddInvoiceItems.t()] | nil,
            application_fee_percent: float() | nil,
            automatic_tax: __MODULE__.AutomaticTax.t() | nil,
            billing_cycle_anchor: String.t() | nil,
            billing_thresholds: map() | nil,
            collection_method: String.t() | nil,
            currency: String.t() | nil,
            default_payment_method: String.t() | nil,
            default_tax_rates: map() | nil,
            description: map() | nil,
            discounts: map() | nil,
            duration: __MODULE__.Duration.t() | nil,
            end_date: map() | nil,
            invoice_settings: __MODULE__.InvoiceSettings.t() | nil,
            items: [__MODULE__.Items.t()] | nil,
            metadata: %{String.t() => String.t()} | nil,
            on_behalf_of: String.t() | nil,
            proration_behavior: String.t() | nil,
            start_date: map() | nil,
            transfer_data: __MODULE__.TransferData.t() | nil,
            trial: boolean() | nil,
            trial_end: map() | nil
          }
    defstruct [
      :add_invoice_items,
      :application_fee_percent,
      :automatic_tax,
      :billing_cycle_anchor,
      :billing_thresholds,
      :collection_method,
      :currency,
      :default_payment_method,
      :default_tax_rates,
      :description,
      :discounts,
      :duration,
      :end_date,
      :invoice_settings,
      :items,
      :metadata,
      :on_behalf_of,
      :proration_behavior,
      :start_date,
      :transfer_data,
      :trial,
      :trial_end
    ]
  end
end
