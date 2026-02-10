# File generated from our OpenAPI spec
defmodule Stripe.Params.Treasury.FinancialAccountFeaturesUpdateFeaturesParams do
  @moduledoc "Parameters for financial account features update features."

  @typedoc """
  * `card_issuing` - Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
  * `deposit_insurance` - Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
  * `expand` - Specifies which fields in the response should be expanded.
  * `financial_addresses` - Contains Features that add FinancialAddresses to the FinancialAccount.
  * `inbound_transfers` - Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
  * `intra_stripe_flows` - Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
  * `outbound_payments` - Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
  * `outbound_transfers` - Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
  """
  @type t :: %__MODULE__{
          card_issuing: map() | nil,
          deposit_insurance: map() | nil,
          expand: [String.t()] | nil,
          financial_addresses: map() | nil,
          inbound_transfers: map() | nil,
          intra_stripe_flows: map() | nil,
          outbound_payments: map() | nil,
          outbound_transfers: map() | nil
        }

  defstruct [
    :card_issuing,
    :deposit_insurance,
    :expand,
    :financial_addresses,
    :inbound_transfers,
    :intra_stripe_flows,
    :outbound_payments,
    :outbound_transfers
  ]

  defmodule CardIssuing do
    @moduledoc "Nested parameters."

    @typedoc """
    * `requested` - Whether the FinancialAccount should have the Feature.
    """
    @type t :: %__MODULE__{
            requested: boolean() | nil
          }
    defstruct [:requested]
  end

  defmodule DepositInsurance do
    @moduledoc "Nested parameters."

    @typedoc """
    * `requested` - Whether the FinancialAccount should have the Feature.
    """
    @type t :: %__MODULE__{
            requested: boolean() | nil
          }
    defstruct [:requested]
  end

  defmodule FinancialAddresses do
    @moduledoc "Nested parameters."

    @typedoc """
    * `aba` - Adds an ABA FinancialAddress to the FinancialAccount.
    """
    @type t :: %__MODULE__{
            aba: map() | nil
          }
    defstruct [:aba]
  end

  defmodule InboundTransfers do
    @moduledoc "Nested parameters."

    @typedoc """
    * `ach` - Enables ACH Debits via the InboundTransfers API.
    """
    @type t :: %__MODULE__{
            ach: map() | nil
          }
    defstruct [:ach]
  end

  defmodule IntraStripeFlows do
    @moduledoc "Nested parameters."

    @typedoc """
    * `requested` - Whether the FinancialAccount should have the Feature.
    """
    @type t :: %__MODULE__{
            requested: boolean() | nil
          }
    defstruct [:requested]
  end

  defmodule OutboundPayments do
    @moduledoc "Nested parameters."

    @typedoc """
    * `ach` - Enables ACH transfers via the OutboundPayments API.
    * `us_domestic_wire` - Enables US domestic wire transfers via the OutboundPayments API.
    """
    @type t :: %__MODULE__{
            ach: map() | nil,
            us_domestic_wire: map() | nil
          }
    defstruct [:ach, :us_domestic_wire]
  end

  defmodule OutboundTransfers do
    @moduledoc "Nested parameters."

    @typedoc """
    * `ach` - Enables ACH transfers via the OutboundTransfers API.
    * `us_domestic_wire` - Enables US domestic wire transfers via the OutboundTransfers API.
    """
    @type t :: %__MODULE__{
            ach: map() | nil,
            us_domestic_wire: map() | nil
          }
    defstruct [:ach, :us_domestic_wire]
  end
end
