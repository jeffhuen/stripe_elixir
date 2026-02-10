# File generated from our OpenAPI spec
defmodule Stripe.Params.V2.Core.AccountLinkCreateParams do
  @moduledoc "Parameters for account link create."

  @typedoc """
  * `account` - The ID of the Account to create link for.
  * `use_case` - The use case of the AccountLink.
  """
  @type t :: %__MODULE__{
          account: String.t(),
          use_case: map()
        }

  defstruct [:account, :use_case]

  defmodule UseCase do
    @moduledoc "Nested parameters."

    @typedoc """
    * `account_onboarding` - Hash containing configuration options for an Account Link object that onboards a new account.
    * `account_update` - Hash containing configuration options for an Account Link that updates an existing account.
    * `type` - Open Enum. The type of Account Link the user is requesting. Possible values: `account_onboarding`, `account_update`.
    """
    @type t :: %__MODULE__{
            account_onboarding: map() | nil,
            account_update: map() | nil,
            type: String.t() | nil
          }
    defstruct [:account_onboarding, :account_update, :type]
  end
end
