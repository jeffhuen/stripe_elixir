# File generated from our OpenAPI spec
defmodule Stripe.Resources.Radar.PaymentEvaluation do
  @moduledoc """
  InsightsResourcesPaymentEvaluation

  Payment Evaluations represent the risk lifecycle of an externally processed payment. It includes the Radar risk score from Stripe, payment outcome taken by the merchant or processor, and any post transaction events, such as refunds or disputes. See the [Radar API guide](https://stripe.com/radar/multiprocessor) for integration steps.
  """

  @typedoc """
  * `client_device_metadata_details` - Expandable.
  * `created_at` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `customer_details` - Expandable.
  * `events` - Event information associated with the payment evaluation, such as refunds, dispute, early fraud warnings, or user interventions. Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `insights` - Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Nullable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `radar.payment_evaluation`.
  * `outcome` - Indicates the final outcome for the payment evaluation. Nullable. Expandable.
  * `payment_details` - Expandable.
  """
  @type t :: %__MODULE__{
          client_device_metadata_details: map() | nil,
          created_at: integer(),
          customer_details: map() | nil,
          events: [map()] | nil,
          id: String.t(),
          insights: map(),
          livemode: boolean(),
          metadata: map(),
          object: String.t(),
          outcome: map() | nil,
          payment_details: map() | nil
        }

  defstruct [
    :client_device_metadata_details,
    :created_at,
    :customer_details,
    :events,
    :id,
    :insights,
    :livemode,
    :metadata,
    :object,
    :outcome,
    :payment_details
  ]

  @object_name "radar.payment_evaluation"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "client_device_metadata_details",
      "customer_details",
      "events",
      "insights",
      "outcome",
      "payment_details"
    ]
end
