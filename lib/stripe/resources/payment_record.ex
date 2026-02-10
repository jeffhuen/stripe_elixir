# File generated from our OpenAPI spec
defmodule Stripe.Resources.PaymentRecord do
  @moduledoc """
  PaymentRecord

  A Payment Record is a resource that allows you to represent payments that occur on- or off-Stripe.
  For example, you can create a Payment Record to model a payment made on a different payment processor,
  in order to mark an Invoice as paid and a Subscription as active. Payment Records consist of one or
  more Payment Attempt Records, which represent individual attempts made on a payment network.
  """

  @typedoc """
  * `amount` - Expandable.
  * `amount_authorized` - Expandable.
  * `amount_canceled` - Expandable.
  * `amount_failed` - Expandable.
  * `amount_guaranteed` - Expandable.
  * `amount_refunded` - Expandable.
  * `amount_requested` - Expandable.
  * `application` - ID of the Connect application that created the PaymentRecord. Max length: 5000. Nullable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `customer_details` - Customer information for this payment. Nullable. Expandable.
  * `customer_presence` - Indicates whether the customer was present in your checkout flow during this payment. Possible values: `off_session`, `on_session`. Nullable.
  * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 5000. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `latest_payment_attempt_record` - ID of the latest Payment Attempt Record attached to this Payment Record. Max length: 5000. Nullable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `payment_record`.
  * `payment_method_details` - Information about the Payment Method debited for this payment. Nullable. Expandable.
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
          latest_payment_attempt_record: String.t(),
          livemode: boolean(),
          metadata: map(),
          object: String.t(),
          payment_method_details: map(),
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
    :latest_payment_attempt_record,
    :livemode,
    :metadata,
    :object,
    :payment_method_details,
    :processor_details,
    :reported_by,
    :shipping_details
  ]

  @object_name "payment_record"
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
