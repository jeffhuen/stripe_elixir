# File generated from our OpenAPI spec
defmodule Stripe.Resources.Billing.CreditBalance do
  @moduledoc """
  CreditBalance
  """

  @typedoc """
  * `available_balance` - Expandable.
  * `ledger_balance` - Expandable.
  """
  @type t :: %__MODULE__{
          available_balance: __MODULE__.AvailableBalance.t(),
          ledger_balance: __MODULE__.LedgerBalance.t()
        }

  defstruct [:available_balance, :ledger_balance]

  @object_name "credit_balance"
  def object_name, do: @object_name

  def expandable_fields, do: ["available_balance", "ledger_balance"]

  defmodule AvailableBalance do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `monetary` - The monetary amount. Nullable.
    * `type` - The type of this amount. We currently only support `monetary` billing credits. Possible values: `monetary`.
    """
    @type t :: %__MODULE__{
            monetary: __MODULE__.Monetary.t() | nil,
            type: String.t() | nil
          }
    defstruct [:monetary, :type]

    defmodule Monetary do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Max length: 5000.
      * `value` - A positive integer representing the amount.
      """
      @type t :: %__MODULE__{
              currency: String.t() | nil,
              value: integer() | nil
            }
      defstruct [:currency, :value]
    end

    def __inner_types__ do
      %{
        "monetary" => __MODULE__.Monetary
      }
    end
  end

  defmodule LedgerBalance do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `monetary` - The monetary amount. Nullable.
    * `type` - The type of this amount. We currently only support `monetary` billing credits. Possible values: `monetary`.
    """
    @type t :: %__MODULE__{
            monetary: __MODULE__.Monetary.t() | nil,
            type: String.t() | nil
          }
    defstruct [:monetary, :type]

    defmodule Monetary do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Max length: 5000.
      * `value` - A positive integer representing the amount.
      """
      @type t :: %__MODULE__{
              currency: String.t() | nil,
              value: integer() | nil
            }
      defstruct [:currency, :value]
    end

    def __inner_types__ do
      %{
        "monetary" => __MODULE__.Monetary
      }
    end
  end

  def __inner_types__ do
    %{
      "available_balance" => __MODULE__.AvailableBalance,
      "ledger_balance" => __MODULE__.LedgerBalance
    }
  end
end
