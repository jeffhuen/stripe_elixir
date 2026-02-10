# File generated from our OpenAPI spec
defmodule Stripe.Resources.SetupAttempt do
  @moduledoc """
  PaymentFlowsSetupIntentSetupAttempt

  A SetupAttempt describes one attempted confirmation of a SetupIntent,
  whether that confirmation is successful or unsuccessful. You can use
  SetupAttempts to inspect details of a specific attempt at setting up a
  payment method using a SetupIntent.
  """

  @typedoc """
  * `application` - The value of [application](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-application) on the SetupIntent at the time of this confirmation. Nullable. Expandable.
  * `attach_to_self` - If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.

  It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `customer` - The value of [customer](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-customer) on the SetupIntent at the time of this confirmation. Nullable. Expandable.
  * `customer_account` - The value of [customer_account](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-customer_account) on the SetupIntent at the time of this confirmation. Max length: 5000. Nullable.
  * `flow_directions` - Indicates the directions of money movement for which this payment method is intended to be used.

  Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `setup_attempt`.
  * `on_behalf_of` - The value of [on_behalf_of](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-on_behalf_of) on the SetupIntent at the time of this confirmation. Nullable. Expandable.
  * `payment_method` - ID of the payment method used with this SetupAttempt. Expandable.
  * `payment_method_details` - Expandable.
  * `setup_error` - The error encountered during this attempt to confirm the SetupIntent, if any. Nullable. Expandable.
  * `setup_intent` - ID of the SetupIntent that this attempt belongs to. Expandable.
  * `status` - Status of this SetupAttempt, one of `requires_confirmation`, `requires_action`, `processing`, `succeeded`, `failed`, or `abandoned`. Max length: 5000.
  * `usage` - The value of [usage](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) on the SetupIntent at the time of this confirmation, one of `off_session` or `on_session`. Max length: 5000.
  """
  @type t :: %__MODULE__{
          application: String.t() | map(),
          attach_to_self: boolean() | nil,
          created: integer(),
          customer: map(),
          customer_account: String.t(),
          flow_directions: [String.t()],
          id: String.t(),
          livemode: boolean(),
          object: String.t(),
          on_behalf_of: String.t() | map(),
          payment_method: String.t() | map(),
          payment_method_details: map(),
          setup_error: String.t() | map(),
          setup_intent: String.t() | map(),
          status: String.t(),
          usage: String.t()
        }

  defstruct [
    :application,
    :attach_to_self,
    :created,
    :customer,
    :customer_account,
    :flow_directions,
    :id,
    :livemode,
    :object,
    :on_behalf_of,
    :payment_method,
    :payment_method_details,
    :setup_error,
    :setup_intent,
    :status,
    :usage
  ]

  @object_name "setup_attempt"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "application",
      "customer",
      "on_behalf_of",
      "payment_method",
      "payment_method_details",
      "setup_error",
      "setup_intent"
    ]
end
