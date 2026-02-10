# File generated from our OpenAPI spec
defmodule Stripe.Params.Apps.SecretFindParams do
  @moduledoc "Parameters for secret find."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `name` - A name for the secret that's unique within the scope. Max length: 5000.
  * `scope` - Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          name: String.t(),
          scope: map()
        }

  defstruct [:expand, :name, :scope]

  defmodule Scope do
    @moduledoc "Nested parameters."

    @typedoc """
    * `type` - The secret scope type. Possible values: `account`, `user`.
    * `user` - The user ID. This field is required if `type` is set to `user`, and should not be provided if `type` is set to `account`. Max length: 5000.
    """
    @type t :: %__MODULE__{
            type: String.t() | nil,
            user: String.t() | nil
          }
    defstruct [:type, :user]
  end
end
