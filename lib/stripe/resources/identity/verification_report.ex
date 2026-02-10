# File generated from our OpenAPI spec
defmodule Stripe.Resources.Identity.VerificationReport do
  @moduledoc """
  GelatoVerificationReport

  A VerificationReport is the result of an attempt to collect and verify data from a user.
  The collection of verification checks performed is determined from the `type` and `options`
  parameters used. You can find the result of each verification check performed in the
  appropriate sub-resource: `document`, `id_number`, `selfie`.

  Each VerificationReport contains a copy of any data collected by the user as well as
  reference IDs which can be used to access collected images through the [FileUpload](https://docs.stripe.com/api/files)
  API. To configure and create VerificationReports, use the
  [VerificationSession](https://docs.stripe.com/api/identity/verification_sessions) API.

  Related guide: [Accessing verification results](https://docs.stripe.com/identity/verification-sessions#results).
  """

  @typedoc """
  * `client_reference_id` - A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems. Max length: 5000. Nullable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `document` - Expandable.
  * `email` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `id_number` - Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `identity.verification_report`.
  * `options` - Expandable.
  * `phone` - Expandable.
  * `selfie` - Expandable.
  * `type` - Type of report. Possible values: `document`, `id_number`, `verification_flow`.
  * `verification_flow` - The configuration token of a verification flow from the dashboard. Max length: 5000.
  * `verification_session` - ID of the VerificationSession that created this report. Max length: 5000. Nullable.
  """
  @type t :: %__MODULE__{
          client_reference_id: String.t(),
          created: integer(),
          document: map() | nil,
          email: map() | nil,
          id: String.t(),
          id_number: map() | nil,
          livemode: boolean(),
          object: String.t(),
          options: map() | nil,
          phone: map() | nil,
          selfie: map() | nil,
          type: String.t(),
          verification_flow: String.t() | nil,
          verification_session: String.t()
        }

  defstruct [
    :client_reference_id,
    :created,
    :document,
    :email,
    :id,
    :id_number,
    :livemode,
    :object,
    :options,
    :phone,
    :selfie,
    :type,
    :verification_flow,
    :verification_session
  ]

  @object_name "identity.verification_report"
  def object_name, do: @object_name

  def expandable_fields, do: ["document", "email", "id_number", "options", "phone", "selfie"]
end
