# File generated from our OpenAPI spec
defmodule Stripe.Params.BalanceSettingsUpdateParams do
  @moduledoc "Parameters for balance settings update."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `payments` - Settings that apply to the [Payments Balance](https://docs.stripe.com/api/balance).
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          payments: map() | nil
        }

  defstruct [:expand, :payments]

  defmodule Payments do
    @moduledoc "Nested parameters."

    @typedoc """
    * `debit_negative_balances` - A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](https://stripe.com/connect/account-balances).
    * `payouts` - Settings specific to the account's payouts.
    * `settlement_timing` - Settings related to the account's balance settlement timing.
    """
    @type t :: %__MODULE__{
            debit_negative_balances: boolean() | nil,
            payouts: map() | nil,
            settlement_timing: map() | nil
          }
    defstruct [:debit_negative_balances, :payouts, :settlement_timing]
  end
end
