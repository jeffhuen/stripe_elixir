# File generated from our OpenAPI spec
defmodule Stripe.Resources.Account do
  @moduledoc """
  Account

  This is an object representing a Stripe account. You can retrieve it to see
  properties on the account like its current requirements or if the account is
  enabled to make live charges or receive payouts.

  For accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection)
  is `application`, which includes Custom accounts, the properties below are always
  returned.

  For accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection)
  is `stripe`, which includes Standard and Express accounts, some properties are only returned
  until you create an [Account Link](https://docs.stripe.com/api/account_links) or [Account Session](https://docs.stripe.com/api/account_sessions)
  to start Connect Onboarding. Learn about the [differences between accounts](https://stripe.com/connect/accounts).
  """

  @typedoc """
  * `business_profile` - Business information about the account. Nullable. Expandable.
  * `business_type` - The business type. Possible values: `company`, `government_entity`, `individual`, `non_profit`. Nullable.
  * `capabilities` - Expandable.
  * `charges_enabled` - Whether the account can process charges.
  * `company` - Expandable.
  * `controller` - Expandable.
  * `country` - The account's country. Max length: 5000.
  * `created` - Time at which the account was connected. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `default_currency` - Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts). Max length: 5000.
  * `details_submitted` - Whether account details have been submitted. Accounts with Stripe Dashboard access, which includes Standard accounts, cannot receive payouts before this is true. Accounts where this is false should be directed to [an onboarding flow](https://stripe.com/connect/onboarding) to finish submitting account details.
  * `email` - An email address associated with the account. It's not used for authentication and Stripe doesn't market to this field without explicit approval from the platform. Max length: 5000. Nullable.
  * `external_accounts` - External accounts (bank accounts and debit cards) currently attached to this account. External accounts are only returned for requests where `controller[is_controller]` is true. Expandable.
  * `future_requirements` - Expandable.
  * `groups` - The groups associated with the account. Nullable. Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `individual` - Expandable.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `account`.
  * `payouts_enabled` - Whether the funds in this account can be paid out.
  * `requirements` - Expandable.
  * `settings` - Options for customizing how the account functions within Stripe. Nullable. Expandable.
  * `tos_acceptance` - Expandable.
  * `type` - The Stripe account type. Can be `standard`, `express`, `custom`, or `none`. Possible values: `custom`, `express`, `none`, `standard`.
  """
  @type t :: %__MODULE__{
          business_profile: map() | nil,
          business_type: String.t() | nil,
          capabilities: map() | nil,
          charges_enabled: boolean() | nil,
          company: map() | nil,
          controller: map() | nil,
          country: String.t() | nil,
          created: integer() | nil,
          default_currency: String.t() | nil,
          details_submitted: boolean() | nil,
          email: String.t() | nil,
          external_accounts: map() | nil,
          future_requirements: map() | nil,
          groups: map() | nil,
          id: String.t(),
          individual: String.t() | map() | nil,
          metadata: map() | nil,
          object: String.t(),
          payouts_enabled: boolean() | nil,
          requirements: map() | nil,
          settings: map() | nil,
          tos_acceptance: map() | nil,
          type: String.t() | nil
        }

  defstruct [
    :business_profile,
    :business_type,
    :capabilities,
    :charges_enabled,
    :company,
    :controller,
    :country,
    :created,
    :default_currency,
    :details_submitted,
    :email,
    :external_accounts,
    :future_requirements,
    :groups,
    :id,
    :individual,
    :metadata,
    :object,
    :payouts_enabled,
    :requirements,
    :settings,
    :tos_acceptance,
    :type
  ]

  @object_name "account"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "business_profile",
      "capabilities",
      "company",
      "controller",
      "external_accounts",
      "future_requirements",
      "groups",
      "individual",
      "requirements",
      "settings",
      "tos_acceptance"
    ]

  defmodule ExternalAccounts do
    @moduledoc false

    @typedoc """
    * `data` - The list contains all external accounts that have been attached to the Stripe account. These may be bank accounts or cards.
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
      "external_accounts" => __MODULE__.ExternalAccounts
    }
  end
end
