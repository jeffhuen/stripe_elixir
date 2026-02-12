# File generated from our OpenAPI spec
defmodule Stripe.Params.Tax.SettingsUpdateParams do
  @moduledoc "Parameters for settings update."

  @typedoc """
  * `defaults` - Default configuration to be used on Stripe Tax calculations.
  * `expand` - Specifies which fields in the response should be expanded.
  * `head_office` - The place where your business is located.
  """
  @type t :: %__MODULE__{
          defaults: __MODULE__.Defaults.t() | nil,
          expand: [String.t()] | nil,
          head_office: __MODULE__.HeadOffice.t() | nil
        }

  defstruct [:defaults, :expand, :head_office]

  defmodule Defaults do
    @moduledoc "Nested parameters."

    @typedoc """
    * `tax_behavior` - Specifies the default [tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#tax-behavior) to be used when the item's price has unspecified tax behavior. One of inclusive, exclusive, or inferred_by_currency. Once specified, it cannot be changed back to null. Possible values: `exclusive`, `inclusive`, `inferred_by_currency`.
    * `tax_code` - A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
    """
    @type t :: %__MODULE__{
            tax_behavior: String.t() | nil,
            tax_code: String.t() | nil
          }
    defstruct [:tax_behavior, :tax_code]
  end

  defmodule HeadOffice do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - The location of the business for tax purposes.
    """
    @type t :: %__MODULE__{
            address: __MODULE__.Address.t() | nil
          }
    defstruct [:address]
  end
end
