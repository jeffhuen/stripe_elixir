# File generated from our OpenAPI spec
defmodule Stripe.Resources.SubscriptionSchedule do
  @moduledoc """
  SubscriptionSchedule

  A subscription schedule allows you to create and manage the lifecycle of a subscription by predefining expected changes.

  Related guide: [Subscription schedules](https://docs.stripe.com/billing/subscriptions/subscription-schedules)
  """

  @typedoc """
  * `application` - ID of the Connect Application that created the schedule. Nullable. Expandable.
  * `billing_mode` - Expandable.
  * `canceled_at` - Time at which the subscription schedule was canceled. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `completed_at` - Time at which the subscription schedule was completed. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `current_phase` - Object representing the start and end dates for the current phase of the subscription schedule, if it is `active`. Nullable. Expandable.
  * `customer` - ID of the customer who owns the subscription schedule. Expandable.
  * `customer_account` - ID of the account who owns the subscription schedule. Max length: 5000. Nullable.
  * `default_settings` - Expandable.
  * `end_behavior` - Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription. Possible values: `cancel`, `none`, `release`, `renew`.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Nullable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `subscription_schedule`.
  * `phases` - Configuration for the subscription schedule's phases. Expandable.
  * `released_at` - Time at which the subscription schedule was released. Measured in seconds since the Unix epoch. Format: Unix timestamp. Nullable.
  * `released_subscription` - ID of the subscription once managed by the subscription schedule (if it is released). Max length: 5000. Nullable.
  * `status` - The present status of the subscription schedule. Possible values are `not_started`, `active`, `completed`, `released`, and `canceled`. You can read more about the different states in our [behavior guide](https://docs.stripe.com/billing/subscriptions/subscription-schedules). Possible values: `active`, `canceled`, `completed`, `not_started`, `released`.
  * `subscription` - ID of the subscription managed by the subscription schedule. Nullable. Expandable.
  * `test_clock` - ID of the test clock this subscription schedule belongs to. Nullable. Expandable.
  """
  @type t :: %__MODULE__{
          application: map(),
          billing_mode: map(),
          canceled_at: integer(),
          completed_at: integer(),
          created: integer(),
          current_phase: map(),
          customer: map(),
          customer_account: String.t(),
          default_settings: map(),
          end_behavior: String.t(),
          id: String.t(),
          livemode: boolean(),
          metadata: map(),
          object: String.t(),
          phases: [map()],
          released_at: integer(),
          released_subscription: String.t(),
          status: String.t(),
          subscription: String.t() | map(),
          test_clock: String.t() | map()
        }

  defstruct [
    :application,
    :billing_mode,
    :canceled_at,
    :completed_at,
    :created,
    :current_phase,
    :customer,
    :customer_account,
    :default_settings,
    :end_behavior,
    :id,
    :livemode,
    :metadata,
    :object,
    :phases,
    :released_at,
    :released_subscription,
    :status,
    :subscription,
    :test_clock
  ]

  @object_name "subscription_schedule"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "application",
      "billing_mode",
      "current_phase",
      "customer",
      "default_settings",
      "phases",
      "subscription",
      "test_clock"
    ]
end
