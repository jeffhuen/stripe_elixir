# File generated from our OpenAPI spec
defmodule Stripe.Params.BillingPortal.ConfigurationUpdateParams do
  @moduledoc "Parameters for configuration update."

  @typedoc """
  * `active` - Whether the configuration is active and can be used to create portal sessions.
  * `business_profile` - The business information shown to customers in the portal.
  * `default_return_url` - The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://docs.stripe.com/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
  * `expand` - Specifies which fields in the response should be expanded.
  * `features` - Information about the features available in the portal.
  * `login_page` - The hosted login page for this configuration. Learn more about the portal login page in our [integration docs](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal#share).
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `name` - The name of the configuration.
  """
  @type t :: %__MODULE__{
          active: boolean() | nil,
          business_profile: map() | nil,
          default_return_url: map() | nil,
          expand: [String.t()] | nil,
          features: map() | nil,
          login_page: map() | nil,
          metadata: map() | nil,
          name: map() | nil
        }

  defstruct [
    :active,
    :business_profile,
    :default_return_url,
    :expand,
    :features,
    :login_page,
    :metadata,
    :name
  ]

  defmodule BusinessProfile do
    @moduledoc "Nested parameters."

    @typedoc """
    * `headline` - The messaging shown to customers in the portal.
    * `privacy_policy_url` - A link to the business’s publicly available privacy policy.
    * `terms_of_service_url` - A link to the business’s publicly available terms of service.
    """
    @type t :: %__MODULE__{
            headline: map() | nil,
            privacy_policy_url: map() | nil,
            terms_of_service_url: map() | nil
          }
    defstruct [:headline, :privacy_policy_url, :terms_of_service_url]
  end

  defmodule Features do
    @moduledoc "Nested parameters."

    @typedoc """
    * `customer_update` - Information about updating the customer details in the portal.
    * `invoice_history` - Information about showing the billing history in the portal.
    * `payment_method_update` - Information about updating payment methods in the portal.
    * `subscription_cancel` - Information about canceling subscriptions in the portal.
    * `subscription_update` - Information about updating subscriptions in the portal.
    """
    @type t :: %__MODULE__{
            customer_update: map() | nil,
            invoice_history: map() | nil,
            payment_method_update: map() | nil,
            subscription_cancel: map() | nil,
            subscription_update: map() | nil
          }
    defstruct [
      :customer_update,
      :invoice_history,
      :payment_method_update,
      :subscription_cancel,
      :subscription_update
    ]
  end

  defmodule LoginPage do
    @moduledoc "Nested parameters."

    @typedoc """
    * `enabled` - Set to `true` to generate a shareable URL [`login_page.url`](https://docs.stripe.com/api/customer_portal/configuration#portal_configuration_object-login_page-url) that will take your customers to a hosted login page for the customer portal.

    Set to `false` to deactivate the `login_page.url`.
    """
    @type t :: %__MODULE__{
            enabled: boolean() | nil
          }
    defstruct [:enabled]
  end
end
