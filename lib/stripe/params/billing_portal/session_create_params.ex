# File generated from our OpenAPI spec
defmodule Stripe.Params.BillingPortal.SessionCreateParams do
  @moduledoc "Parameters for session create."

  @typedoc """
  * `configuration` - The ID of an existing [configuration](https://docs.stripe.com/api/customer_portal/configuration) to use for this session, describing its functionality and features. If not specified, the session uses the default configuration. Max length: 5000.
  * `customer` - The ID of an existing customer. Max length: 5000.
  * `customer_account` - The ID of an existing account. Max length: 5000.
  * `expand` - Specifies which fields in the response should be expanded.
  * `flow_data` - Information about a specific flow for the customer to go through. See the [docs](https://docs.stripe.com/customer-management/portal-deep-links) to learn more about using customer portal deep links and flows.
  * `locale` - The IETF language tag of the locale customer portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used. Possible values: `auto`, `bg`, `cs`, `da`, `de`, `el`, `en`, `en-AU`, `en-CA`, `en-GB`, `en-IE`, `en-IN`, `en-NZ`, `en-SG`, `es`, `es-419`, `et`, `fi`, `fil`, `fr`, `fr-CA`, `hr`, `hu`, `id`, `it`, `ja`, `ko`, `lt`, `lv`, `ms`, `mt`, `nb`, `nl`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sk`, `sl`, `sv`, `th`, `tr`, `vi`, `zh`, `zh-HK`, `zh-TW`.
  * `on_behalf_of` - The `on_behalf_of` account to use for this session. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://docs.stripe.com/connect/separate-charges-and-transfers#settlement-merchant). Use the [Accounts API](https://docs.stripe.com/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
  * `return_url` - The default URL to redirect customers to when they click on the portal's link to return to your website.
  """
  @type t :: %__MODULE__{
          configuration: String.t() | nil,
          customer: String.t() | nil,
          customer_account: String.t() | nil,
          expand: [String.t()] | nil,
          flow_data: map() | nil,
          locale: String.t() | nil,
          on_behalf_of: String.t() | nil,
          return_url: String.t() | nil
        }

  defstruct [
    :configuration,
    :customer,
    :customer_account,
    :expand,
    :flow_data,
    :locale,
    :on_behalf_of,
    :return_url
  ]

  defmodule FlowData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `after_completion` - Behavior after the flow is completed.
    * `subscription_cancel` - Configuration when `flow_data.type=subscription_cancel`.
    * `subscription_update` - Configuration when `flow_data.type=subscription_update`.
    * `subscription_update_confirm` - Configuration when `flow_data.type=subscription_update_confirm`.
    * `type` - Type of flow that the customer will go through. Possible values: `payment_method_update`, `subscription_cancel`, `subscription_update`, `subscription_update_confirm`.
    """
    @type t :: %__MODULE__{
            after_completion: map() | nil,
            subscription_cancel: map() | nil,
            subscription_update: map() | nil,
            subscription_update_confirm: map() | nil,
            type: String.t() | nil
          }
    defstruct [
      :after_completion,
      :subscription_cancel,
      :subscription_update,
      :subscription_update_confirm,
      :type
    ]
  end
end
