# File generated from our OpenAPI spec
defmodule Stripe.Params.PaymentLinkCreateParams do
  @moduledoc "Parameters for payment link create."

  @typedoc """
  * `after_completion` - Behavior after the purchase is complete.
  * `allow_promotion_codes` - Enables user redeemable promotion codes.
  * `application_fee_amount` - The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Can only be applied when there are no line items with recurring prices.
  * `application_fee_percent` - A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
  * `automatic_tax` - Configuration for automatic tax collection.
  * `billing_address_collection` - Configuration for collecting the customer's billing address. Defaults to `auto`. Possible values: `auto`, `required`.
  * `consent_collection` - Configure fields to gather active consent from customers.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies) and supported by each line item's price. Format: ISO 4217 currency code.
  * `custom_fields` - Collect additional information from your customer using custom fields. Up to 3 fields are supported. You can't set this parameter if `ui_mode` is `custom`.
  * `custom_text` - Display additional text for your customers using custom text. You can't set this parameter if `ui_mode` is `custom`.
  * `customer_creation` - Configures whether [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link create a [Customer](https://docs.stripe.com/api/customers). Possible values: `always`, `if_required`.
  * `expand` - Specifies which fields in the response should be expanded.
  * `inactive_message` - The custom message to be displayed to a customer when a payment link is no longer active. Max length: 500.
  * `invoice_creation` - Generate a post-purchase Invoice for one-time payments.
  * `line_items` - The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link.
  * `name_collection` - Controls settings applied for collecting the customer's name.
  * `on_behalf_of` - The account on behalf of which to charge.
  * `optional_items` - A list of optional items the customer can add to their order at checkout. Use this parameter to pass one-time or recurring [Prices](https://docs.stripe.com/api/prices).
  There is a maximum of 10 optional items allowed on a payment link, and the existing limits on the number of line items allowed on a payment link apply to the combined number of line items and optional items.
  There is a maximum of 20 combined line items and optional items.
  * `payment_intent_data` - A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
  * `payment_method_collection` - Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.

  Can only be set in `subscription` mode. Defaults to `always`.

  If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://docs.stripe.com/payments/checkout/free-trials). Possible values: `always`, `if_required`.
  * `payment_method_types` - The list of payment method types that customers can use. If no value is passed, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods) (20+ payment methods [supported](https://docs.stripe.com/payments/payment-methods/integration-options#payment-method-product-support)).
  * `phone_number_collection` - Controls phone number collection settings during checkout.

  We recommend that you review your privacy policy and check with your legal contacts.
  * `restrictions` - Settings that restrict the usage of a payment link.
  * `shipping_address_collection` - Configuration for collecting the customer's shipping address.
  * `shipping_options` - The shipping rate options to apply to [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link.
  * `submit_type` - Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://docs.stripe.com/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`). Possible values: `auto`, `book`, `donate`, `pay`, `subscribe`.
  * `subscription_data` - When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
  * `tax_id_collection` - Controls tax ID collection during checkout.
  * `transfer_data` - The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
  """
  @type t :: %__MODULE__{
          after_completion: __MODULE__.AfterCompletion.t() | nil,
          allow_promotion_codes: boolean() | nil,
          application_fee_amount: integer() | nil,
          application_fee_percent: float() | nil,
          automatic_tax: __MODULE__.AutomaticTax.t() | nil,
          billing_address_collection: String.t() | nil,
          consent_collection: __MODULE__.ConsentCollection.t() | nil,
          currency: String.t() | nil,
          custom_fields: [__MODULE__.CustomFields.t()] | nil,
          custom_text: __MODULE__.CustomText.t() | nil,
          customer_creation: String.t() | nil,
          expand: [String.t()] | nil,
          inactive_message: String.t() | nil,
          invoice_creation: __MODULE__.InvoiceCreation.t() | nil,
          line_items: [__MODULE__.LineItems.t()],
          metadata: %{String.t() => String.t()} | nil,
          name_collection: __MODULE__.NameCollection.t() | nil,
          on_behalf_of: String.t() | nil,
          optional_items: [__MODULE__.OptionalItems.t()] | nil,
          payment_intent_data: __MODULE__.PaymentIntentData.t() | nil,
          payment_method_collection: String.t() | nil,
          payment_method_types: [String.t()] | nil,
          phone_number_collection: __MODULE__.PhoneNumberCollection.t() | nil,
          restrictions: __MODULE__.Restrictions.t() | nil,
          shipping_address_collection: __MODULE__.ShippingAddressCollection.t() | nil,
          shipping_options: [__MODULE__.ShippingOptions.t()] | nil,
          submit_type: String.t() | nil,
          subscription_data: __MODULE__.SubscriptionData.t() | nil,
          tax_id_collection: __MODULE__.TaxIdCollection.t() | nil,
          transfer_data: __MODULE__.TransferData.t() | nil
        }

  defstruct [
    :after_completion,
    :allow_promotion_codes,
    :application_fee_amount,
    :application_fee_percent,
    :automatic_tax,
    :billing_address_collection,
    :consent_collection,
    :currency,
    :custom_fields,
    :custom_text,
    :customer_creation,
    :expand,
    :inactive_message,
    :invoice_creation,
    :line_items,
    :metadata,
    :name_collection,
    :on_behalf_of,
    :optional_items,
    :payment_intent_data,
    :payment_method_collection,
    :payment_method_types,
    :phone_number_collection,
    :restrictions,
    :shipping_address_collection,
    :shipping_options,
    :submit_type,
    :subscription_data,
    :tax_id_collection,
    :transfer_data
  ]

  defmodule AfterCompletion do
    @moduledoc "Nested parameters."

    @typedoc """
    * `hosted_confirmation` - Configuration when `type=hosted_confirmation`.
    * `redirect` - Configuration when `type=redirect`.
    * `type` - The specified behavior after the purchase is complete. Either `redirect` or `hosted_confirmation`. Possible values: `hosted_confirmation`, `redirect`.
    """
    @type t :: %__MODULE__{
            hosted_confirmation: __MODULE__.HostedConfirmation.t() | nil,
            redirect: __MODULE__.Redirect.t() | nil,
            type: String.t() | nil
          }
    defstruct [:hosted_confirmation, :redirect, :type]
  end

  defmodule AutomaticTax do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Set to `true` to [calculate tax automatically](https://docs.stripe.com/tax) using the customer's location.

    Enabling this parameter causes the payment link to collect any billing address information necessary for tax calculation.
    * `liability` - The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil,
            liability: __MODULE__.Liability.t() | nil
          }
    defstruct [:enabled, :liability]
  end

  defmodule ConsentCollection do
    @moduledoc "Nested parameters."

    @typedoc """
    * `payment_method_reuse_agreement` - Determines the display of payment method reuse agreement text in the UI. If set to `hidden`, it will hide legal text related to the reuse of a payment method.
    * `promotions` - If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout
    Session will determine whether to display an option to opt into promotional communication
    from the merchant depending on the customer's locale. Only available to US merchants. Possible values: `auto`, `none`.
    * `terms_of_service` - If set to `required`, it requires customers to check a terms of service checkbox before being able to pay.
    There must be a valid terms of service URL set in your [Dashboard settings](https://dashboard.stripe.com/settings/public). Possible values: `none`, `required`.
    """
    @type t :: %__MODULE__{
            payment_method_reuse_agreement: __MODULE__.PaymentMethodReuseAgreement.t() | nil,
            promotions: String.t() | nil,
            terms_of_service: String.t() | nil
          }
    defstruct [:payment_method_reuse_agreement, :promotions, :terms_of_service]
  end

  defmodule CustomFields do
    @moduledoc "Nested parameters."

    @typedoc """
    * `dropdown` - Configuration for `type=dropdown` fields.
    * `key` - String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters. Max length: 200.
    * `label` - The label for the field, displayed to the customer.
    * `numeric` - Configuration for `type=numeric` fields.
    * `optional` - Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
    * `text` - Configuration for `type=text` fields.
    * `type` - The type of the field. Possible values: `dropdown`, `numeric`, `text`.
    """
    @type t :: %__MODULE__{
            dropdown: __MODULE__.Dropdown.t() | nil,
            key: String.t() | nil,
            label: __MODULE__.Label.t() | nil,
            numeric: __MODULE__.Numeric.t() | nil,
            optional: boolean() | nil,
            text: __MODULE__.Text.t() | nil,
            type: String.t() | nil
          }
    defstruct [:dropdown, :key, :label, :numeric, :optional, :text, :type]
  end

  defmodule CustomText do
    @moduledoc "Nested parameters."

    @typedoc """
    * `after_submit` - Custom text that should be displayed after the payment confirmation button.
    * `shipping_address` - Custom text that should be displayed alongside shipping address collection.
    * `submit` - Custom text that should be displayed alongside the payment confirmation button.
    * `terms_of_service_acceptance` - Custom text that should be displayed in place of the default terms of service agreement text.
    """
    @type t :: %__MODULE__{
            after_submit: map() | nil,
            shipping_address: map() | nil,
            submit: map() | nil,
            terms_of_service_acceptance: map() | nil
          }
    defstruct [:after_submit, :shipping_address, :submit, :terms_of_service_acceptance]
  end

  defmodule InvoiceCreation do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Whether the feature is enabled
    * `invoice_data` - Invoice PDF configuration.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil,
            invoice_data: __MODULE__.InvoiceData.t() | nil
          }
    defstruct [:enabled, :invoice_data]
  end

  defmodule LineItems do
    @moduledoc "Nested parameters."

    @typedoc """
    * `adjustable_quantity` - When set, provides configuration for this item’s quantity to be adjusted by the customer during checkout.
    * `price` - The ID of the [Price](https://docs.stripe.com/api/prices) or [Plan](https://docs.stripe.com/api/plans) object. One of `price` or `price_data` is required. Max length: 5000.
    * `price_data` - Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline. One of `price` or `price_data` is required.
    * `quantity` - The quantity of the line item being purchased.
    """
    @type t :: %__MODULE__{
            adjustable_quantity: __MODULE__.AdjustableQuantity.t() | nil,
            price: String.t() | nil,
            price_data: __MODULE__.PriceData.t() | nil,
            quantity: integer() | nil
          }
    defstruct [:adjustable_quantity, :price, :price_data, :quantity]
  end

  defmodule NameCollection do
    @moduledoc "Nested parameters."

    @typedoc """
    * `business` - Controls settings applied for collecting the customer's business name.
    * `individual` - Controls settings applied for collecting the customer's individual name.
    """
    @type t :: %__MODULE__{
            business: __MODULE__.Business.t() | nil,
            individual: __MODULE__.Individual.t() | nil
          }
    defstruct [:business, :individual]
  end

  defmodule OptionalItems do
    @moduledoc "Nested parameters."

    @typedoc """
    * `adjustable_quantity` - When set, provides configuration for the customer to adjust the quantity of the line item created when a customer chooses to add this optional item to their order.
    * `price` - The ID of the [Price](https://docs.stripe.com/api/prices) or [Plan](https://docs.stripe.com/api/plans) object. Max length: 5000.
    * `quantity` - The initial quantity of the line item created when a customer chooses to add this optional item to their order.
    """
    @type t :: %__MODULE__{
            adjustable_quantity: __MODULE__.AdjustableQuantity.t() | nil,
            price: String.t() | nil,
            quantity: integer() | nil
          }
    defstruct [:adjustable_quantity, :price, :quantity]
  end

  defmodule PaymentIntentData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `capture_method` - Controls when the funds will be captured from the customer's account. Possible values: `automatic`, `automatic_async`, `manual`.
    * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 1000.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will declaratively set metadata on [Payment Intents](https://docs.stripe.com/api/payment_intents) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
    * `setup_future_usage` - Indicates that you intend to [make future payments](https://docs.stripe.com/payments/payment-intents#future-usage) with the payment method collected by this Checkout Session.

    When setting this to `on_session`, Checkout will show a notice to the customer that their payment details will be saved.

    When setting this to `off_session`, Checkout will show a notice to the customer that their payment details will be saved and used for future payments.

    If a Customer has been provided or Checkout creates a new Customer,Checkout will attach the payment method to the Customer.

    If Checkout does not create a Customer, the payment method is not attached to a Customer. To reuse the payment method, you can retrieve it from the Checkout Session's PaymentIntent.

    When processing card payments, Checkout also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as SCA. Possible values: `off_session`, `on_session`.
    * `statement_descriptor` - Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).

    Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead. Max length: 22.
    * `statement_descriptor_suffix` - Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. Max length: 22.
    * `transfer_group` - A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://docs.stripe.com/connect/separate-charges-and-transfers) for details. Max length: 5000.
    """
    @type t :: %__MODULE__{
            capture_method: String.t() | nil,
            description: String.t() | nil,
            metadata: %{String.t() => String.t()} | nil,
            setup_future_usage: String.t() | nil,
            statement_descriptor: String.t() | nil,
            statement_descriptor_suffix: String.t() | nil,
            transfer_group: String.t() | nil
          }
    defstruct [
      :capture_method,
      :description,
      :metadata,
      :setup_future_usage,
      :statement_descriptor,
      :statement_descriptor_suffix,
      :transfer_group
    ]
  end

  defmodule PhoneNumberCollection do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Set to `true` to enable phone number collection.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil
          }
    defstruct [:enabled]
  end

  defmodule Restrictions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `completed_sessions` - Configuration for the `completed_sessions` restriction type.
    """
    @type t :: %__MODULE__{
            completed_sessions: __MODULE__.CompletedSessions.t() | nil
          }
    defstruct [:completed_sessions]
  end

  defmodule ShippingAddressCollection do
    @moduledoc "Nested parameters."

    @typedoc """
    * `allowed_countries` - An array of two-letter ISO country codes representing which countries Checkout should provide as options for
    shipping locations.
    """
    @type t :: %__MODULE__{
            allowed_countries: [String.t()] | nil
          }
    defstruct [:allowed_countries]
  end

  defmodule ShippingOptions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `shipping_rate` - The ID of the Shipping Rate to use for this shipping option. Max length: 5000.
    """
    @type t :: %__MODULE__{
            shipping_rate: String.t() | nil
          }
    defstruct [:shipping_rate]
  end

  defmodule SubscriptionData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `description` - The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs. Max length: 500.
    * `invoice_settings` - All invoices will be billed using the specified settings.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will declaratively set metadata on [Subscriptions](https://docs.stripe.com/api/subscriptions) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
    * `trial_period_days` - Integer representing the number of trial period days before the customer is charged for the first time. Has to be at least 1.
    * `trial_settings` - Settings related to subscription trials.
    """
    @type t :: %__MODULE__{
            description: String.t() | nil,
            invoice_settings: __MODULE__.InvoiceSettings.t() | nil,
            metadata: %{String.t() => String.t()} | nil,
            trial_period_days: integer() | nil,
            trial_settings: __MODULE__.TrialSettings.t() | nil
          }
    defstruct [:description, :invoice_settings, :metadata, :trial_period_days, :trial_settings]
  end

  defmodule TaxIdCollection do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Enable tax ID collection during checkout. Defaults to `false`.
    * `required` - Describes whether a tax ID is required during checkout. Defaults to `never`. You can't set this parameter if `ui_mode` is `custom`. Possible values: `if_supported`, `never`.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil,
            required: String.t() | nil
          }
    defstruct [:enabled, :required]
  end

  defmodule TransferData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `amount` - The amount that will be transferred automatically when a charge succeeds.
    * `destination` - If specified, successful charges will be attributed to the destination
    account for tax reporting, and the funds from charges will be transferred
    to the destination account. The ID of the resulting transfer will be
    returned on the successful charge's `transfer` field.
    """
    @type t :: %__MODULE__{
            amount: integer() | nil,
            destination: String.t() | nil
          }
    defstruct [:amount, :destination]
  end
end
