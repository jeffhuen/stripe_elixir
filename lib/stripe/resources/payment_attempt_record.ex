# File generated from our OpenAPI spec
defmodule Stripe.Resources.PaymentAttemptRecord do
  @moduledoc """
  PaymentAttemptRecord

  A Payment Attempt Record represents an individual attempt at making a payment, on or off Stripe.
  Each payment attempt tries to collect a fixed amount of money from a fixed customer and payment
  method. Payment Attempt Records are attached to Payment Records. Only one attempt per Payment Record
  can have guaranteed funds.
  """

  @typedoc """
  * `amount` - Expandable.
  * `amount_authorized` - Expandable.
  * `amount_canceled` - Expandable.
  * `amount_failed` - Expandable.
  * `amount_guaranteed` - Expandable.
  * `amount_refunded` - Expandable.
  * `amount_requested` - Expandable.
  * `application` - ID of the Connect application that created the PaymentAttemptRecord. Max length: 5000. Nullable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `customer_details` - Customer information for this payment. Nullable. Expandable.
  * `customer_presence` - Indicates whether the customer was present in your checkout flow during this payment. Possible values: `off_session`, `on_session`. Nullable.
  * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 5000. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `payment_attempt_record`.
  * `payment_method_details` - Information about the Payment Method debited for this payment. Nullable. Expandable.
  * `payment_record` - ID of the Payment Record this Payment Attempt Record belongs to. Max length: 5000. Nullable.
  * `processor_details` - Expandable.
  * `reported_by` - Indicates who reported the payment. Possible values: `self`, `stripe`.
  * `shipping_details` - Shipping information for this payment. Nullable. Expandable.
  """
  @type t :: %__MODULE__{
          amount: map(),
          amount_authorized: map(),
          amount_canceled: map(),
          amount_failed: map(),
          amount_guaranteed: map(),
          amount_refunded: map(),
          amount_requested: map(),
          application: String.t(),
          created: integer(),
          customer_details: map(),
          customer_presence: String.t(),
          description: String.t(),
          id: String.t(),
          livemode: boolean(),
          metadata: map(),
          object: String.t(),
          payment_method_details: map(),
          payment_record: String.t(),
          processor_details: map(),
          reported_by: String.t(),
          shipping_details: map()
        }

  defstruct [
    :amount,
    :amount_authorized,
    :amount_canceled,
    :amount_failed,
    :amount_guaranteed,
    :amount_refunded,
    :amount_requested,
    :application,
    :created,
    :customer_details,
    :customer_presence,
    :description,
    :id,
    :livemode,
    :metadata,
    :object,
    :payment_method_details,
    :payment_record,
    :processor_details,
    :reported_by,
    :shipping_details
  ]

  @object_name "payment_attempt_record"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "amount",
      "amount_authorized",
      "amount_canceled",
      "amount_failed",
      "amount_guaranteed",
      "amount_refunded",
      "amount_requested",
      "customer_details",
      "payment_method_details",
      "processor_details",
      "shipping_details"
    ]
end
