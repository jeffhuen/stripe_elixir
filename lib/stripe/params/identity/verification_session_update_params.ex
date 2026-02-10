# File generated from our OpenAPI spec
defmodule Stripe.Params.Identity.VerificationSessionUpdateParams do
  @moduledoc "Parameters for verification session update."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `options` - A set of options for the session’s verification checks.
  * `provided_details` - Details provided about the user being verified. These details may be shown to the user.
  * `type` - The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed. Possible values: `document`, `id_number`.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          metadata: map() | nil,
          options: map() | nil,
          provided_details: map() | nil,
          type: String.t() | nil
        }

  defstruct [:expand, :metadata, :options, :provided_details, :type]

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
end
