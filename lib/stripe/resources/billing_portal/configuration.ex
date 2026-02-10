# File generated from our OpenAPI spec
defmodule Stripe.Resources.BillingPortal.Configuration do
  @moduledoc """
  PortalConfiguration

  A portal configuration describes the functionality and behavior you embed in a portal session. Related guide: [Configure the customer portal](https://stripe.com/customer-management/configure-portal).
  """

  @typedoc """
  * `active` - Whether the configuration is active and can be used to create portal sessions.
  * `application` - ID of the Connect Application that created the configuration. Nullable. Expandable.
  * `business_profile` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `default_return_url` - The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://docs.stripe.com/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session. Max length: 5000. Nullable.
  * `features` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `is_default` - Whether the configuration is the default. If `true`, this configuration can be managed in the Dashboard and portal sessions will use this configuration unless it is overriden when creating the session.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `login_page` - Expandable.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Nullable.
  * `name` - The name of the configuration. Max length: 5000. Nullable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `billing_portal.configuration`.
  * `updated` - Time at which the object was last updated. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  """
  @type t :: %__MODULE__{
          active: boolean(),
          application: map(),
          business_profile: map(),
          created: integer(),
          default_return_url: String.t(),
          features: map(),
          id: String.t(),
          is_default: boolean(),
          livemode: boolean(),
          login_page: map(),
          metadata: map(),
          name: String.t(),
          object: String.t(),
          updated: integer()
        }

  defstruct [
    :active,
    :application,
    :business_profile,
    :created,
    :default_return_url,
    :features,
    :id,
    :is_default,
    :livemode,
    :login_page,
    :metadata,
    :name,
    :object,
    :updated
  ]

  @object_name "billing_portal.configuration"
  def object_name, do: @object_name

  def expandable_fields, do: ["application", "business_profile", "features", "login_page"]
end
