# File generated from our OpenAPI spec
defmodule Stripe.Resources.ConfirmationToken do
  @moduledoc """
  ConfirmationTokensResourceConfirmationToken

  ConfirmationTokens help transport client side data collected by Stripe JS over
  to your server for confirming a PaymentIntent or SetupIntent. If the confirmation
  is successful, values present on the ConfirmationToken are written onto the Intent.

  To learn more about how to use ConfirmationToken, visit the related guides:
  - [Finalize payments on the server](https://docs.stripe.com/payments/finalize-payments-on-the-server)
  - [Build two-step confirmation](https://docs.stripe.com/payments/build-a-two-step-confirmation).
  """

  @typedoc """
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `expires_at` - Time at which this ConfirmationToken expires and can no longer be used to confirm a PaymentIntent or SetupIntent. Format: Unix timestamp. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `mandate_data` - Data used for generating a Mandate. Nullable. Expandable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `confirmation_token`.
  * `payment_intent` - ID of the PaymentIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used. Max length: 5000. Nullable.
  * `payment_method_options` - Payment-method-specific configuration for this ConfirmationToken. Nullable. Expandable.
  * `payment_method_preview` - Payment details collected by the Payment Element, used to create a PaymentMethod when a PaymentIntent or SetupIntent is confirmed with this ConfirmationToken. Nullable. Expandable.
  * `return_url` - Return URL used to confirm the Intent. Max length: 5000. Nullable.
  * `setup_future_usage` - Indicates that you intend to make future payments with this ConfirmationToken's payment method.

  The presence of this property will [attach the payment method](https://docs.stripe.com/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. Possible values: `off_session`, `on_session`. Nullable.
  * `setup_intent` - ID of the SetupIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used. Max length: 5000. Nullable.
  * `shipping` - Shipping information collected on this ConfirmationToken. Nullable. Expandable.
  * `use_stripe_sdk` - Indicates whether the Stripe SDK is used to handle confirmation flow. Defaults to `true` on ConfirmationToken.
  """
  @type t :: %__MODULE__{
          created: integer(),
          expires_at: integer(),
          id: String.t(),
          livemode: boolean(),
          mandate_data: map() | nil,
          object: String.t(),
          payment_intent: String.t(),
          payment_method_options: map(),
          payment_method_preview: map(),
          return_url: String.t(),
          setup_future_usage: String.t(),
          setup_intent: String.t(),
          shipping: map(),
          use_stripe_sdk: boolean()
        }

  defstruct [
    :created,
    :expires_at,
    :id,
    :livemode,
    :mandate_data,
    :object,
    :payment_intent,
    :payment_method_options,
    :payment_method_preview,
    :return_url,
    :setup_future_usage,
    :setup_intent,
    :shipping,
    :use_stripe_sdk
  ]

  @object_name "confirmation_token"
  def object_name, do: @object_name

  def expandable_fields,
    do: ["mandate_data", "payment_method_options", "payment_method_preview", "shipping"]
end
