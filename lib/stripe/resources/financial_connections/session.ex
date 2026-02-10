# File generated from our OpenAPI spec
defmodule Stripe.Resources.FinancialConnections.Session do
  @moduledoc """
  BankConnectionsResourceLinkAccountSession

  A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
  """

  @typedoc """
  * `account_holder` - The account holder for whom accounts are collected in this session. Nullable. Expandable.
  * `accounts` - The accounts that were collected as part of this Session. Expandable.
  * `client_secret` - A value that will be passed to the client to launch the authentication flow. Max length: 5000. Nullable.
  * `filters` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `financial_connections.session`.
  * `permissions` - Permissions requested for accounts collected during this session.
  * `prefetch` - Data features requested to be retrieved upon account creation. Nullable.
  * `return_url` - For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app. Max length: 5000.
  """
  @type t :: %__MODULE__{
          account_holder: map(),
          accounts: map(),
          client_secret: String.t(),
          filters: map() | nil,
          id: String.t(),
          livemode: boolean(),
          object: String.t(),
          permissions: [String.t()],
          prefetch: [String.t()],
          return_url: String.t() | nil
        }

  defstruct [
    :account_holder,
    :accounts,
    :client_secret,
    :filters,
    :id,
    :livemode,
    :object,
    :permissions,
    :prefetch,
    :return_url
  ]

  @object_name "financial_connections.session"
  def object_name, do: @object_name

  def expandable_fields, do: ["account_holder", "accounts", "filters"]

  defmodule Accounts do
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
      "accounts" => __MODULE__.Accounts
    }
  end
end
