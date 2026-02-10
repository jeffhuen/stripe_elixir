# File generated from our OpenAPI spec
defmodule Stripe.Resources.PaymentLink do
  @moduledoc """
  PaymentLink

  A payment link is a shareable URL that will take your customers to a hosted payment page. A payment link can be shared and used multiple times.

  When a customer opens a payment link it will open a new [checkout session](https://docs.stripe.com/api/checkout/sessions) to render the payment page. You can use [checkout session events](https://docs.stripe.com/api/events/types#event_types-checkout.session.completed) to track payments through payment links.

  Related guide: [Payment Links API](https://docs.stripe.com/payment-links)
  """

  @typedoc """
  * `active` - Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
  * `after_completion` - Expandable.
  * `allow_promotion_codes` - Whether user redeemable promotion codes are enabled.
  * `application` - The ID of the Connect application that created the Payment Link. Nullable. Expandable.
  * `application_fee_amount` - The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Nullable.
  * `application_fee_percent` - This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Nullable.
  * `automatic_tax` - Expandable.
  * `billing_address_collection` - Configuration for collecting the customer's billing address. Defaults to `auto`. Possible values: `auto`, `required`.
  * `consent_collection` - When set, provides configuration to gather active consent from customers. Nullable. Expandable.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `custom_fields` - Collect additional information from your customer using custom fields. Up to 3 fields are supported. You can't set this parameter if `ui_mode` is `custom`. Expandable.
  * `custom_text` - Expandable.
  * `customer_creation` - Configuration for Customer creation during checkout. Possible values: `always`, `if_required`.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `inactive_message` - The custom message to be displayed to a customer when a payment link is no longer active. Max length: 5000. Nullable.
  * `invoice_creation` - Configuration for creating invoice for payment mode payment links. Nullable. Expandable.
  * `line_items` - The line items representing what is being sold. Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `name_collection` - Expandable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `payment_link`.
  * `on_behalf_of` - The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details. Nullable. Expandable.
  * `optional_items` - The optional items presented to the customer at checkout. Nullable. Expandable.
  * `payment_intent_data` - Indicates the parameters to be passed to PaymentIntent creation during checkout. Nullable. Expandable.
  * `payment_method_collection` - Configuration for collecting a payment method during checkout. Defaults to `always`. Possible values: `always`, `if_required`.
  * `payment_method_types` - The list of payment method types that customers can use. When `null`, Stripe will dynamically show relevant payment methods you've enabled in your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). Nullable.
  * `phone_number_collection` - Expandable.
  * `restrictions` - Settings that restrict the usage of a payment link. Nullable. Expandable.
  * `shipping_address_collection` - Configuration for collecting the customer's shipping address. Nullable. Expandable.
  * `shipping_options` - The shipping rate options applied to the session. Expandable.
  * `submit_type` - Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button. Possible values: `auto`, `book`, `donate`, `pay`, `subscribe`.
  * `subscription_data` - When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`. Nullable. Expandable.
  * `tax_id_collection` - Expandable.
  * `transfer_data` - The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to. Nullable. Expandable.
  * `url` - The public URL that can be shared with customers. Max length: 5000.
  """
  @type t :: %__MODULE__{
          active: boolean(),
          after_completion: map(),
          allow_promotion_codes: boolean(),
          application: map(),
          application_fee_amount: integer(),
          application_fee_percent: float(),
          automatic_tax: map(),
          billing_address_collection: String.t(),
          consent_collection: map(),
          currency: String.t(),
          custom_fields: [map()],
          custom_text: map(),
          customer_creation: String.t(),
          id: String.t(),
          inactive_message: String.t(),
          invoice_creation: map(),
          line_items: map() | nil,
          livemode: boolean(),
          metadata: map(),
          name_collection: map() | nil,
          object: String.t(),
          on_behalf_of: String.t() | map(),
          optional_items: [map()] | nil,
          payment_intent_data: map(),
          payment_method_collection: String.t(),
          payment_method_types: [String.t()],
          phone_number_collection: map(),
          restrictions: map(),
          shipping_address_collection: map(),
          shipping_options: [map()],
          submit_type: String.t(),
          subscription_data: map(),
          tax_id_collection: map(),
          transfer_data: map(),
          url: String.t()
        }

  defstruct [
    :active,
    :after_completion,
    :allow_promotion_codes,
    :application,
    :application_fee_amount,
    :application_fee_percent,
    :automatic_tax,
    :billing_address_collection,
    :consent_collection,
    :currency,
    :custom_fields,
    :custom_text,
    :customer_creation,
    :id,
    :inactive_message,
    :invoice_creation,
    :line_items,
    :livemode,
    :metadata,
    :name_collection,
    :object,
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
    :transfer_data,
    :url
  ]

  @object_name "payment_link"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "after_completion",
      "application",
      "automatic_tax",
      "consent_collection",
      "custom_fields",
      "custom_text",
      "invoice_creation",
      "line_items",
      "name_collection",
      "on_behalf_of",
      "optional_items",
      "payment_intent_data",
      "phone_number_collection",
      "restrictions",
      "shipping_address_collection",
      "shipping_options",
      "subscription_data",
      "tax_id_collection",
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
