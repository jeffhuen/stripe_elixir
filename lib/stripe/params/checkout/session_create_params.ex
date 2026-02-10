# File generated from our OpenAPI spec
defmodule Stripe.Params.Checkout.SessionCreateParams do
  @moduledoc "Parameters for session create."

  @typedoc """
  * `adaptive_pricing` - Settings for price localization with [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing).
  * `after_expiration` - Configure actions after a Checkout Session has expired. You can't set this parameter if `ui_mode` is `custom`.
  * `allow_promotion_codes` - Enables user redeemable promotion codes.
  * `automatic_tax` - Settings for automatic tax lookup for this session and resulting payments, invoices, and subscriptions.
  * `billing_address_collection` - Specify whether Checkout should collect the customer's billing address. Defaults to `auto`. Possible values: `auto`, `required`.
  * `branding_settings` - The branding settings for the Checkout Session. This parameter is not allowed if ui_mode is `custom`.
  * `cancel_url` - If set, Checkout displays a back button and customers will be directed to this URL if they decide to cancel payment and return to your website. This parameter is not allowed if ui_mode is `embedded` or `custom`.
  * `client_reference_id` - A unique string to reference the Checkout Session. This can be a
  customer ID, a cart ID, or similar, and can be used to reconcile the
  session with your internal systems. Max length: 200.
  * `consent_collection` - Configure fields for the Checkout Session to gather active consent from customers.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Required in `setup` mode when `payment_method_types` is not set. Format: ISO 4217 currency code.
  * `custom_fields` - Collect additional information from your customer using custom fields. Up to 3 fields are supported. You can't set this parameter if `ui_mode` is `custom`.
  * `custom_text` - Display additional text for your customers using custom text. You can't set this parameter if `ui_mode` is `custom`.
  * `customer` - ID of an existing Customer, if one exists. In `payment` mode, the customer’s most recently saved card
  payment method will be used to prefill the email, name, card details, and billing address
  on the Checkout page. In `subscription` mode, the customer’s [default payment method](https://docs.stripe.com/api/customers/update#update_customer-invoice_settings-default_payment_method)
  will be used if it’s a card, otherwise the most recently saved card will be used. A valid billing address, billing name and billing email are required on the payment method for Checkout to prefill the customer's card details.

  If the Customer already has a valid [email](https://docs.stripe.com/api/customers/object#customer_object-email) set, the email will be prefilled and not editable in Checkout.
  If the Customer does not have a valid `email`, Checkout will set the email entered during the session on the Customer.

  If blank for Checkout Sessions in `subscription` mode or with `customer_creation` set as `always` in `payment` mode, Checkout will create a new Customer object based on information provided during the payment flow.

  You can set [`payment_intent_data.setup_future_usage`](https://docs.stripe.com/api/checkout/sessions/create#create_checkout_session-payment_intent_data-setup_future_usage) to have Checkout automatically attach the payment method to the Customer you pass in for future reuse. Max length: 5000.
  * `customer_account` - ID of an existing Account, if one exists. Has the same behavior as `customer`. Max length: 5000.
  * `customer_creation` - Configure whether a Checkout Session creates a [Customer](https://docs.stripe.com/api/customers) during Session confirmation.

  When a Customer is not created, you can still retrieve email, address, and other customer data entered in Checkout
  with [customer_details](https://docs.stripe.com/api/checkout/sessions/object#checkout_session_object-customer_details).

  Sessions that don't create Customers instead are grouped by [guest customers](https://docs.stripe.com/payments/checkout/guest-customers)
  in the Dashboard. Promotion codes limited to first time customers will return invalid for these Sessions.

  Can only be set in `payment` and `setup` mode. Possible values: `always`, `if_required`.
  * `customer_email` - If provided, this value will be used when the Customer object is created.
  If not provided, customers will be asked to enter their email address.
  Use this parameter to prefill customer data if you already have an email
  on file. To access information about the customer once a session is
  complete, use the `customer` field.
  * `customer_update` - Controls what fields on Customer can be updated by the Checkout Session. Can only be provided when `customer` is provided.
  * `discounts` - The coupon or promotion code to apply to this Session. Currently, only up to one may be specified.
  * `excluded_payment_method_types` - A list of the types of payment methods (e.g., `card`) that should be excluded from this Checkout Session. This should only be used when payment methods for this Checkout Session are managed through the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
  * `expand` - Specifies which fields in the response should be expanded.
  * `expires_at` - The Epoch time in seconds at which the Checkout Session will expire. It can be anywhere from 30 minutes to 24 hours after Checkout Session creation. By default, this value is 24 hours from creation. Format: Unix timestamp.
  * `invoice_creation` - Generate a post-purchase Invoice for one-time payments.
  * `line_items` - A list of items the customer is purchasing. Use this parameter to pass one-time or recurring [Prices](https://docs.stripe.com/api/prices). The parameter is required for `payment` and `subscription` mode.

  For `payment` mode, there is a maximum of 100 line items, however it is recommended to consolidate line items if there are more than a few dozen.

  For `subscription` mode, there is a maximum of 20 line items with recurring Prices and 20 line items with one-time Prices. Line items with one-time Prices will be on the initial invoice only.
  * `locale` - The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used. Possible values: `auto`, `bg`, `cs`, `da`, `de`, `el`, `en`, `en-GB`, `es`, `es-419`, `et`, `fi`, `fil`, `fr`, `fr-CA`, `hr`, `hu`, `id`, `it`, `ja`, `ko`, `lt`, `lv`, `ms`, `mt`, `nb`, `nl`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sk`, `sl`, `sv`, `th`, `tr`, `vi`, `zh`, `zh-HK`, `zh-TW`.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `mode` - The mode of the Checkout Session. Pass `subscription` if the Checkout Session includes at least one recurring item. Possible values: `payment`, `setup`, `subscription`.
  * `name_collection` - Controls name collection settings for the session.

  You can configure Checkout to collect your customers' business names, individual names, or both. Each name field can be either required or optional.

  If a [Customer](https://docs.stripe.com/api/customers) is created or provided, the names can be saved to the Customer object as well.

  You can't set this parameter if `ui_mode` is `custom`.
  * `optional_items` - A list of optional items the customer can add to their order at checkout. Use this parameter to pass one-time or recurring [Prices](https://docs.stripe.com/api/prices).

  There is a maximum of 10 optional items allowed on a Checkout Session, and the existing limits on the number of line items allowed on a Checkout Session apply to the combined number of line items and optional items.

  For `payment` mode, there is a maximum of 100 combined line items and optional items, however it is recommended to consolidate items if there are more than a few dozen.

  For `subscription` mode, there is a maximum of 20 line items and optional items with recurring Prices and 20 line items and optional items with one-time Prices.

  You can't set this parameter if `ui_mode` is `custom`.
  * `origin_context` - Where the user is coming from. This informs the optimizations that are applied to the session. You can't set this parameter if `ui_mode` is `custom`. Possible values: `mobile_app`, `web`.
  * `payment_intent_data` - A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
  * `payment_method_collection` - Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.
  This may occur if the Checkout Session includes a free trial or a discount.

  Can only be set in `subscription` mode. Defaults to `always`.

  If you'd like information on how to collect a payment method outside of Checkout, read the guide on configuring [subscriptions with a free trial](https://docs.stripe.com/payments/checkout/free-trials). Possible values: `always`, `if_required`.
  * `payment_method_configuration` - The ID of the payment method configuration to use with this Checkout session. Max length: 100.
  * `payment_method_data` - This parameter allows you to set some attributes on the payment method created during a Checkout session.
  * `payment_method_options` - Payment-method-specific configuration.
  * `payment_method_types` - A list of the types of payment methods (e.g., `card`) this Checkout Session can accept.

  You can omit this attribute to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
  See [Dynamic Payment Methods](https://docs.stripe.com/payments/payment-methods/integration-options#using-dynamic-payment-methods) for more details.

  Read more about the supported payment methods and their requirements in our [payment
  method details guide](https://docs.stripe.com/docs/payments/checkout/payment-methods).

  If multiple payment methods are passed, Checkout will dynamically reorder them to
  prioritize the most relevant payment methods based on the customer's location and
  other characteristics.
  * `permissions` - This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object. Can only be set when creating `embedded` or `custom` sessions.

  For specific permissions, please refer to their dedicated subsections, such as `permissions.update_shipping_details`.
  * `phone_number_collection` - Controls phone number collection settings for the session.

  We recommend that you review your privacy policy and check with your legal contacts
  before using this feature. Learn more about [collecting phone numbers with Checkout](https://docs.stripe.com/payments/checkout/phone-numbers).
  * `redirect_on_completion` - This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://docs.stripe.com/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`. Possible values: `always`, `if_required`, `never`.
  * `return_url` - The URL to redirect your customer back to after they authenticate or cancel their payment on the
  payment method's app or site. This parameter is required if `ui_mode` is `embedded` or `custom`
  and redirect-based payment methods are enabled on the session.
  * `saved_payment_method_options` - Controls saved payment method settings for the session. Only available in `payment` and `subscription` mode.
  * `setup_intent_data` - A subset of parameters to be passed to SetupIntent creation for Checkout Sessions in `setup` mode.
  * `shipping_address_collection` - When set, provides configuration for Checkout to collect a shipping address from a customer.
  * `shipping_options` - The shipping rate options to apply to this Session. Up to a maximum of 5.
  * `submit_type` - Describes the type of transaction being performed by Checkout in order
  to customize relevant text on the page, such as the submit button.
  `submit_type` can only be specified on Checkout Sessions in
  `payment` or `subscription` mode. If blank or `auto`, `pay` is used.
  You can't set this parameter if `ui_mode` is `custom`. Possible values: `auto`, `book`, `donate`, `pay`, `subscribe`.
  * `subscription_data` - A subset of parameters to be passed to subscription creation for Checkout Sessions in `subscription` mode.
  * `success_url` - The URL to which Stripe should send customers when payment or setup
  is complete.
  This parameter is not allowed if ui_mode is `embedded` or `custom`. If you'd like to use
  information from the successful Checkout Session on your page, read the
  guide on [customizing your success page](https://docs.stripe.com/payments/checkout/custom-success-page).
  * `tax_id_collection` - Controls tax ID collection during checkout.
  * `ui_mode` - The UI mode of the Session. Defaults to `hosted`. Possible values: `custom`, `embedded`, `hosted`.
  * `wallet_options` - Wallet-specific configuration.
  """
  @type t :: %__MODULE__{
          adaptive_pricing: map() | nil,
          after_expiration: map() | nil,
          allow_promotion_codes: boolean() | nil,
          automatic_tax: map() | nil,
          billing_address_collection: String.t() | nil,
          branding_settings: map() | nil,
          cancel_url: String.t() | nil,
          client_reference_id: String.t() | nil,
          consent_collection: map() | nil,
          currency: String.t() | nil,
          custom_fields: [map()] | nil,
          custom_text: map() | nil,
          customer: String.t() | nil,
          customer_account: String.t() | nil,
          customer_creation: String.t() | nil,
          customer_email: String.t() | nil,
          customer_update: map() | nil,
          discounts: [map()] | nil,
          excluded_payment_method_types: [String.t()] | nil,
          expand: [String.t()] | nil,
          expires_at: integer() | nil,
          invoice_creation: map() | nil,
          line_items: [map()] | nil,
          locale: String.t() | nil,
          metadata: map() | nil,
          mode: String.t() | nil,
          name_collection: map() | nil,
          optional_items: [map()] | nil,
          origin_context: String.t() | nil,
          payment_intent_data: map() | nil,
          payment_method_collection: String.t() | nil,
          payment_method_configuration: String.t() | nil,
          payment_method_data: map() | nil,
          payment_method_options: map() | nil,
          payment_method_types: [String.t()] | nil,
          permissions: map() | nil,
          phone_number_collection: map() | nil,
          redirect_on_completion: String.t() | nil,
          return_url: String.t() | nil,
          saved_payment_method_options: map() | nil,
          setup_intent_data: map() | nil,
          shipping_address_collection: map() | nil,
          shipping_options: [map()] | nil,
          submit_type: String.t() | nil,
          subscription_data: map() | nil,
          success_url: String.t() | nil,
          tax_id_collection: map() | nil,
          ui_mode: String.t() | nil,
          wallet_options: map() | nil
        }

  defstruct [
    :adaptive_pricing,
    :after_expiration,
    :allow_promotion_codes,
    :automatic_tax,
    :billing_address_collection,
    :branding_settings,
    :cancel_url,
    :client_reference_id,
    :consent_collection,
    :currency,
    :custom_fields,
    :custom_text,
    :customer,
    :customer_account,
    :customer_creation,
    :customer_email,
    :customer_update,
    :discounts,
    :excluded_payment_method_types,
    :expand,
    :expires_at,
    :invoice_creation,
    :line_items,
    :locale,
    :metadata,
    :mode,
    :name_collection,
    :optional_items,
    :origin_context,
    :payment_intent_data,
    :payment_method_collection,
    :payment_method_configuration,
    :payment_method_data,
    :payment_method_options,
    :payment_method_types,
    :permissions,
    :phone_number_collection,
    :redirect_on_completion,
    :return_url,
    :saved_payment_method_options,
    :setup_intent_data,
    :shipping_address_collection,
    :shipping_options,
    :submit_type,
    :subscription_data,
    :success_url,
    :tax_id_collection,
    :ui_mode,
    :wallet_options
  ]

  defmodule AdaptivePricing do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - If set to `true`, Adaptive Pricing is available on [eligible sessions](https://docs.stripe.com/payments/currencies/localize-prices/adaptive-pricing?payment-ui=stripe-hosted#restrictions). Defaults to your [dashboard setting](https://dashboard.stripe.com/settings/adaptive-pricing).
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil
          }
    defstruct [:enabled]
  end

  defmodule AfterExpiration do
    @moduledoc "Nested parameters."

    @typedoc """
    * `recovery` - Configure a Checkout Session that can be used to recover an expired session.
    """
    @type t :: %__MODULE__{
            recovery: map() | nil
          }
    defstruct [:recovery]
  end

  defmodule AutomaticTax do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Set to `true` to [calculate tax automatically](https://docs.stripe.com/tax) using the customer's location.

    Enabling this parameter causes Checkout to collect any billing address information necessary for tax calculation.
    * `liability` - The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil,
            liability: map() | nil
          }
    defstruct [:enabled, :liability]
  end

  defmodule BrandingSettings do
    @moduledoc "Nested parameters."

    @typedoc """
    * `background_color` - A hex color value starting with `#` representing the background color for the Checkout Session.
    * `border_style` - The border style for the Checkout Session. Possible values: `pill`, `rectangular`, `rounded`.
    * `button_color` - A hex color value starting with `#` representing the button color for the Checkout Session.
    * `display_name` - A string to override the business name shown on the Checkout Session. This only shows at the top of the Checkout page, and your business name still appears in terms, receipts, and other places. Max length: 5000.
    * `font_family` - The font family for the Checkout Session corresponding to one of the [supported font families](https://docs.stripe.com/payments/checkout/customization/appearance?payment-ui=stripe-hosted#font-compatibility). Possible values: `be_vietnam_pro`, `bitter`, `chakra_petch`, `default`, `hahmlet`, `inconsolata`, `inter`, `lato`, `lora`, `m_plus_1_code`, `montserrat`, `noto_sans`, `noto_sans_jp`, `noto_serif`, `nunito`, `open_sans`, `pridi`, `pt_sans`, `pt_serif`, `raleway`, `roboto`, `roboto_slab`, `source_sans_pro`, `titillium_web`, `ubuntu_mono`, `zen_maru_gothic`.
    * `icon` - The icon for the Checkout Session. For best results, use a square image.
    * `logo` - The logo for the Checkout Session.
    """
    @type t :: %__MODULE__{
            background_color: map() | nil,
            border_style: String.t() | nil,
            button_color: map() | nil,
            display_name: String.t() | nil,
            font_family: String.t() | nil,
            icon: map() | nil,
            logo: map() | nil
          }
    defstruct [
      :background_color,
      :border_style,
      :button_color,
      :display_name,
      :font_family,
      :icon,
      :logo
    ]
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
            payment_method_reuse_agreement: map() | nil,
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
            dropdown: map() | nil,
            key: String.t() | nil,
            label: map() | nil,
            numeric: map() | nil,
            optional: boolean() | nil,
            text: map() | nil,
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

  defmodule CustomerUpdate do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - Describes whether Checkout saves the billing address onto `customer.address`.
    To always collect a full billing address, use `billing_address_collection`. Defaults to `never`. Possible values: `auto`, `never`.
    * `name` - Describes whether Checkout saves the name onto `customer.name`. Defaults to `never`. Possible values: `auto`, `never`.
    * `shipping` - Describes whether Checkout saves shipping information onto `customer.shipping`.
    To collect shipping information, use `shipping_address_collection`. Defaults to `never`. Possible values: `auto`, `never`.
    """
    @type t :: %__MODULE__{
            address: String.t() | nil,
            name: String.t() | nil,
            shipping: String.t() | nil
          }
    defstruct [:address, :name, :shipping]
  end

  defmodule Discounts do
    @moduledoc "Nested parameters."

    @typedoc """
    * `coupon` - The ID of the coupon to apply to this Session. Max length: 5000.
    * `promotion_code` - The ID of a promotion code to apply to this Session. Max length: 5000.
    """
    @type t :: %__MODULE__{
            coupon: String.t() | nil,
            promotion_code: String.t() | nil
          }
    defstruct [:coupon, :promotion_code]
  end

  defmodule InvoiceCreation do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Set to `true` to enable invoice creation.
    * `invoice_data` - Parameters passed when creating invoices for payment-mode Checkout Sessions.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil,
            invoice_data: map() | nil
          }
    defstruct [:enabled, :invoice_data]
  end

  defmodule LineItems do
    @moduledoc "Nested parameters."

    @typedoc """
    * `adjustable_quantity` - When set, provides configuration for this item’s quantity to be adjusted by the customer during Checkout.
    * `dynamic_tax_rates` - The [tax rates](https://docs.stripe.com/api/tax_rates) that will be applied to this line item depending on the customer's billing/shipping address. We currently support the following countries: US, GB, AU, and all countries in the EU. You can't set this parameter if `ui_mode` is `custom`.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `price` - The ID of the [Price](https://docs.stripe.com/api/prices) or [Plan](https://docs.stripe.com/api/plans) object. One of `price` or `price_data` is required. Max length: 5000.
    * `price_data` - Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline. One of `price` or `price_data` is required.
    * `quantity` - The quantity of the line item being purchased. Quantity should not be defined when `recurring.usage_type=metered`.
    * `tax_rates` - The [tax rates](https://docs.stripe.com/api/tax_rates) which apply to this line item.
    """
    @type t :: %__MODULE__{
            adjustable_quantity: map() | nil,
            dynamic_tax_rates: [String.t()] | nil,
            metadata: map() | nil,
            price: String.t() | nil,
            price_data: map() | nil,
            quantity: integer() | nil,
            tax_rates: [String.t()] | nil
          }
    defstruct [
      :adjustable_quantity,
      :dynamic_tax_rates,
      :metadata,
      :price,
      :price_data,
      :quantity,
      :tax_rates
    ]
  end

  defmodule NameCollection do
    @moduledoc "Nested parameters."

    @typedoc """
    * `business` - Controls settings applied for collecting the customer's business name on the session.
    * `individual` - Controls settings applied for collecting the customer's individual name on the session.
    """
    @type t :: %__MODULE__{
            business: map() | nil,
            individual: map() | nil
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
            adjustable_quantity: map() | nil,
            price: String.t() | nil,
            quantity: integer() | nil
          }
    defstruct [:adjustable_quantity, :price, :quantity]
  end

  defmodule PaymentIntentData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `application_fee_amount` - The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
    * `capture_method` - Controls when the funds will be captured from the customer's account. Possible values: `automatic`, `automatic_async`, `manual`.
    * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 1000.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `on_behalf_of` - The Stripe account ID for which these funds are intended. For details,
    see the PaymentIntents [use case for connected
    accounts](https://docs.stripe.com/docs/payments/connected-accounts).
    * `receipt_email` - Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    * `setup_future_usage` - Indicates that you intend to [make future payments](https://docs.stripe.com/payments/payment-intents#future-usage) with the payment
    method collected by this Checkout Session.

    When setting this to `on_session`, Checkout will show a notice to the
    customer that their payment details will be saved.

    When setting this to `off_session`, Checkout will show a notice to the
    customer that their payment details will be saved and used for future
    payments.

    If a Customer has been provided or Checkout creates a new Customer,
    Checkout will attach the payment method to the Customer.

    If Checkout does not create a Customer, the payment method is not attached
    to a Customer. To reuse the payment method, you can retrieve it from the
    Checkout Session's PaymentIntent.

    When processing card payments, Checkout also uses `setup_future_usage`
    to dynamically optimize your payment flow and comply with regional
    legislation and network rules, such as SCA. Possible values: `off_session`, `on_session`.
    * `shipping` - Shipping information for this payment.
    * `statement_descriptor` - Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).

    Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead. Max length: 22.
    * `statement_descriptor_suffix` - Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. Max length: 22.
    * `transfer_data` - The parameters used to automatically create a Transfer when the payment succeeds.
    For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
    * `transfer_group` - A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://docs.stripe.com/connect/separate-charges-and-transfers) for details.
    """
    @type t :: %__MODULE__{
            application_fee_amount: integer() | nil,
            capture_method: String.t() | nil,
            description: String.t() | nil,
            metadata: map() | nil,
            on_behalf_of: String.t() | nil,
            receipt_email: String.t() | nil,
            setup_future_usage: String.t() | nil,
            shipping: map() | nil,
            statement_descriptor: String.t() | nil,
            statement_descriptor_suffix: String.t() | nil,
            transfer_data: map() | nil,
            transfer_group: String.t() | nil
          }
    defstruct [
      :application_fee_amount,
      :capture_method,
      :description,
      :metadata,
      :on_behalf_of,
      :receipt_email,
      :setup_future_usage,
      :shipping,
      :statement_descriptor,
      :statement_descriptor_suffix,
      :transfer_data,
      :transfer_group
    ]
  end

  defmodule PaymentMethodData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `allow_redisplay` - Allow redisplay will be set on the payment method on confirmation and indicates whether this payment method can be shown again to the customer in a checkout flow. Only set this field if you wish to override the allow_redisplay value determined by Checkout. Possible values: `always`, `limited`, `unspecified`.
    """
    @type t :: %__MODULE__{
            allow_redisplay: String.t() | nil
          }
    defstruct [:allow_redisplay]
  end

  defmodule PaymentMethodOptions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `acss_debit` - contains details about the ACSS Debit payment method options. You can't set this parameter if `ui_mode` is `custom`.
    * `affirm` - contains details about the Affirm payment method options.
    * `afterpay_clearpay` - contains details about the Afterpay Clearpay payment method options.
    * `alipay` - contains details about the Alipay payment method options.
    * `alma` - contains details about the Alma payment method options.
    * `amazon_pay` - contains details about the AmazonPay payment method options.
    * `au_becs_debit` - contains details about the AU Becs Debit payment method options.
    * `bacs_debit` - contains details about the Bacs Debit payment method options.
    * `bancontact` - contains details about the Bancontact payment method options.
    * `billie` - contains details about the Billie payment method options.
    * `boleto` - contains details about the Boleto payment method options.
    * `card` - contains details about the Card payment method options.
    * `cashapp` - contains details about the Cashapp Pay payment method options.
    * `customer_balance` - contains details about the Customer Balance payment method options.
    * `demo_pay` - contains details about the DemoPay payment method options.
    * `eps` - contains details about the EPS payment method options.
    * `fpx` - contains details about the FPX payment method options.
    * `giropay` - contains details about the Giropay payment method options.
    * `grabpay` - contains details about the Grabpay payment method options.
    * `ideal` - contains details about the Ideal payment method options.
    * `kakao_pay` - contains details about the Kakao Pay payment method options.
    * `klarna` - contains details about the Klarna payment method options.
    * `konbini` - contains details about the Konbini payment method options.
    * `kr_card` - contains details about the Korean card payment method options.
    * `link` - contains details about the Link payment method options.
    * `mobilepay` - contains details about the Mobilepay payment method options.
    * `multibanco` - contains details about the Multibanco payment method options.
    * `naver_pay` - contains details about the Naver Pay payment method options.
    * `oxxo` - contains details about the OXXO payment method options.
    * `p24` - contains details about the P24 payment method options.
    * `pay_by_bank` - contains details about the Pay By Bank payment method options.
    * `payco` - contains details about the PAYCO payment method options.
    * `paynow` - contains details about the PayNow payment method options.
    * `paypal` - contains details about the PayPal payment method options.
    * `payto` - contains details about the PayTo payment method options.
    * `pix` - contains details about the Pix payment method options.
    * `revolut_pay` - contains details about the RevolutPay payment method options.
    * `samsung_pay` - contains details about the Samsung Pay payment method options.
    * `satispay` - contains details about the Satispay payment method options.
    * `sepa_debit` - contains details about the Sepa Debit payment method options.
    * `sofort` - contains details about the Sofort payment method options.
    * `swish` - contains details about the Swish payment method options.
    * `twint` - contains details about the TWINT payment method options.
    * `us_bank_account` - contains details about the Us Bank Account payment method options.
    * `wechat_pay` - contains details about the WeChat Pay payment method options.
    """
    @type t :: %__MODULE__{
            acss_debit: map() | nil,
            affirm: map() | nil,
            afterpay_clearpay: map() | nil,
            alipay: map() | nil,
            alma: map() | nil,
            amazon_pay: map() | nil,
            au_becs_debit: map() | nil,
            bacs_debit: map() | nil,
            bancontact: map() | nil,
            billie: map() | nil,
            boleto: map() | nil,
            card: map() | nil,
            cashapp: map() | nil,
            customer_balance: map() | nil,
            demo_pay: map() | nil,
            eps: map() | nil,
            fpx: map() | nil,
            giropay: map() | nil,
            grabpay: map() | nil,
            ideal: map() | nil,
            kakao_pay: map() | nil,
            klarna: map() | nil,
            konbini: map() | nil,
            kr_card: map() | nil,
            link: map() | nil,
            mobilepay: map() | nil,
            multibanco: map() | nil,
            naver_pay: map() | nil,
            oxxo: map() | nil,
            p24: map() | nil,
            pay_by_bank: map() | nil,
            payco: map() | nil,
            paynow: map() | nil,
            paypal: map() | nil,
            payto: map() | nil,
            pix: map() | nil,
            revolut_pay: map() | nil,
            samsung_pay: map() | nil,
            satispay: map() | nil,
            sepa_debit: map() | nil,
            sofort: map() | nil,
            swish: map() | nil,
            twint: map() | nil,
            us_bank_account: map() | nil,
            wechat_pay: map() | nil
          }
    defstruct [
      :acss_debit,
      :affirm,
      :afterpay_clearpay,
      :alipay,
      :alma,
      :amazon_pay,
      :au_becs_debit,
      :bacs_debit,
      :bancontact,
      :billie,
      :boleto,
      :card,
      :cashapp,
      :customer_balance,
      :demo_pay,
      :eps,
      :fpx,
      :giropay,
      :grabpay,
      :ideal,
      :kakao_pay,
      :klarna,
      :konbini,
      :kr_card,
      :link,
      :mobilepay,
      :multibanco,
      :naver_pay,
      :oxxo,
      :p24,
      :pay_by_bank,
      :payco,
      :paynow,
      :paypal,
      :payto,
      :pix,
      :revolut_pay,
      :samsung_pay,
      :satispay,
      :sepa_debit,
      :sofort,
      :swish,
      :twint,
      :us_bank_account,
      :wechat_pay
    ]
  end

  defmodule Permissions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `update_shipping_details` - Determines which entity is allowed to update the shipping details.

    Default is `client_only`. Stripe Checkout client will automatically update the shipping details. If set to `server_only`, only your server is allowed to update the shipping details.

    When set to `server_only`, you must add the onShippingDetailsChange event handler when initializing the Stripe Checkout client and manually update the shipping details from your server using the Stripe API. Possible values: `client_only`, `server_only`.
    """
    @type t :: %__MODULE__{
            update_shipping_details: String.t() | nil
          }
    defstruct [:update_shipping_details]
  end

  defmodule PhoneNumberCollection do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Set to `true` to enable phone number collection.

    Can only be set in `payment` and `subscription` mode.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil
          }
    defstruct [:enabled]
  end

  defmodule SavedPaymentMethodOptions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `allow_redisplay_filters` - Uses the `allow_redisplay` value of each saved payment method to filter the set presented to a returning customer. By default, only saved payment methods with ’allow_redisplay: ‘always’ are shown in Checkout.
    * `payment_method_remove` - Enable customers to choose if they wish to remove their saved payment methods. Disabled by default. Possible values: `disabled`, `enabled`.
    * `payment_method_save` - Enable customers to choose if they wish to save their payment method for future use. Disabled by default. Possible values: `disabled`, `enabled`.
    """
    @type t :: %__MODULE__{
            allow_redisplay_filters: [String.t()] | nil,
            payment_method_remove: String.t() | nil,
            payment_method_save: String.t() | nil
          }
    defstruct [:allow_redisplay_filters, :payment_method_remove, :payment_method_save]
  end

  defmodule SetupIntentData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 1000.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `on_behalf_of` - The Stripe account for which the setup is intended.
    """
    @type t :: %__MODULE__{
            description: String.t() | nil,
            metadata: map() | nil,
            on_behalf_of: String.t() | nil
          }
    defstruct [:description, :metadata, :on_behalf_of]
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
    * `shipping_rate_data` - Parameters to be passed to Shipping Rate creation for this shipping option.
    """
    @type t :: %__MODULE__{
            shipping_rate: String.t() | nil,
            shipping_rate_data: map() | nil
          }
    defstruct [:shipping_rate, :shipping_rate_data]
  end

  defmodule SubscriptionData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `application_fee_percent` - A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. To use an application fee percent, the request must be made on behalf of another account, using the `Stripe-Account` header or an OAuth key. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
    * `billing_cycle_anchor` - A future timestamp to anchor the subscription's billing cycle for new subscriptions. You can't set this parameter if `ui_mode` is `custom`. Format: Unix timestamp.
    * `billing_mode` - Controls how prorations and invoices for subscriptions are calculated and orchestrated.
    * `default_tax_rates` - The tax rates that will apply to any subscription item that does not have
    `tax_rates` set. Invoices created will have their `default_tax_rates` populated
    from the subscription.
    * `description` - The subscription's description, meant to be displayable to the customer.
    Use this field to optionally store an explanation of the subscription
    for rendering in the [customer portal](https://docs.stripe.com/customer-management). Max length: 500.
    * `invoice_settings` - All invoices will be billed using the specified settings.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `on_behalf_of` - The account on behalf of which to charge, for each of the subscription's invoices.
    * `proration_behavior` - Determines how to handle prorations resulting from the `billing_cycle_anchor`. If no value is passed, the default is `create_prorations`. Possible values: `create_prorations`, `none`.
    * `transfer_data` - If specified, the funds from the subscription's invoices will be transferred to the destination and the ID of the resulting transfers will be found on the resulting charges.
    * `trial_end` - Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. Has to be at least 48 hours in the future. Format: Unix timestamp.
    * `trial_period_days` - Integer representing the number of trial period days before the customer is charged for the first time. Has to be at least 1.
    * `trial_settings` - Settings related to subscription trials.
    """
    @type t :: %__MODULE__{
            application_fee_percent: float() | nil,
            billing_cycle_anchor: integer() | nil,
            billing_mode: map() | nil,
            default_tax_rates: [String.t()] | nil,
            description: String.t() | nil,
            invoice_settings: map() | nil,
            metadata: map() | nil,
            on_behalf_of: String.t() | nil,
            proration_behavior: String.t() | nil,
            transfer_data: map() | nil,
            trial_end: integer() | nil,
            trial_period_days: integer() | nil,
            trial_settings: map() | nil
          }
    defstruct [
      :application_fee_percent,
      :billing_cycle_anchor,
      :billing_mode,
      :default_tax_rates,
      :description,
      :invoice_settings,
      :metadata,
      :on_behalf_of,
      :proration_behavior,
      :transfer_data,
      :trial_end,
      :trial_period_days,
      :trial_settings
    ]
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

  defmodule WalletOptions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `link` - contains details about the Link wallet options.
    """
    @type t :: %__MODULE__{
            link: map() | nil
          }
    defstruct [:link]
  end
end
