# File generated from our OpenAPI spec
defmodule Stripe.Params.Identity.VerificationSessionCreateParams do
  @moduledoc "Parameters for verification session create."

  @typedoc """
  * `client_reference_id` - A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems. Max length: 5000.
  * `expand` - Specifies which fields in the response should be expanded.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `options` - A set of options for the session’s verification checks.
  * `provided_details` - Details provided about the user being verified. These details may be shown to the user.
  * `related_customer` - Customer ID Max length: 5000.
  * `related_customer_account` - The ID of the Account representing a customer. Max length: 5000.
  * `related_person` - Tokens referencing a Person resource and it's associated account.
  * `return_url` - The URL that the user will be redirected to upon completing the verification flow.
  * `type` - The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed. You must provide a `type` if not passing `verification_flow`. Possible values: `document`, `id_number`.
  * `verification_flow` - The ID of a verification flow from the Dashboard. See https://docs.stripe.com/identity/verification-flows. Max length: 5000.
  """
  @type t :: %__MODULE__{
          client_reference_id: String.t() | nil,
          expand: [String.t()] | nil,
          metadata: %{String.t() => String.t()} | nil,
          options: __MODULE__.Options.t() | nil,
          provided_details: __MODULE__.ProvidedDetails.t() | nil,
          related_customer: String.t() | nil,
          related_customer_account: String.t() | nil,
          related_person: __MODULE__.RelatedPerson.t() | nil,
          return_url: String.t() | nil,
          type: String.t() | nil,
          verification_flow: String.t() | nil
        }

  defstruct [
    :client_reference_id,
    :expand,
    :metadata,
    :options,
    :provided_details,
    :related_customer,
    :related_customer_account,
    :related_person,
    :return_url,
    :type,
    :verification_flow
  ]

  defmodule Options do
    @moduledoc "Nested parameters."

    @typedoc """
    * `document` - Options that apply to the [document check](https://docs.stripe.com/identity/verification-checks?type=document).
    """
    @type t :: %__MODULE__{
            document: map() | nil
          }
    defstruct [:document]
  end

  defmodule ProvidedDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `email` - Email of user being verified
    * `phone` - Phone number of user being verified
    """
    @type t :: %__MODULE__{
            email: String.t() | nil,
            phone: String.t() | nil
          }
    defstruct [:email, :phone]
  end

  defmodule RelatedPerson do
    @moduledoc "Nested parameters."

    @typedoc """
    * `account` - A token representing a connected account. If provided, the person parameter is also required and must be associated with the account. Max length: 5000.
    * `person` - A token referencing a Person resource that this verification is being used to verify. Max length: 5000.
    """
    @type t :: %__MODULE__{
            account: String.t() | nil,
            person: String.t() | nil
          }
    defstruct [:account, :person]
  end
end
