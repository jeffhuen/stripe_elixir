# File generated from our OpenAPI spec
defmodule Stripe.Resources.Treasury.FinancialAccountFeatures do
  @moduledoc """
  TreasuryFinancialAccountsResourceFinancialAccountFeatures

  Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.
  Stripe or the platform can control Features via the requested field.
  """

  @typedoc """
  * `card_issuing` - Expandable.
  * `deposit_insurance` - Expandable.
  * `financial_addresses` - Expandable.
  * `inbound_transfers` - Expandable.
  * `intra_stripe_flows` - Expandable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `treasury.financial_account_features`.
  * `outbound_payments` - Expandable.
  * `outbound_transfers` - Expandable.
  """
  @type t :: %__MODULE__{
          card_issuing: map() | nil,
          deposit_insurance: map() | nil,
          financial_addresses: map() | nil,
          inbound_transfers: map() | nil,
          intra_stripe_flows: map() | nil,
          object: String.t(),
          outbound_payments: map() | nil,
          outbound_transfers: map() | nil
        }

  defstruct [
    :card_issuing,
    :deposit_insurance,
    :financial_addresses,
    :inbound_transfers,
    :intra_stripe_flows,
    :object,
    :outbound_payments,
    :outbound_transfers
  ]

  @object_name "treasury.financial_account_features"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "card_issuing",
      "deposit_insurance",
      "financial_addresses",
      "inbound_transfers",
      "intra_stripe_flows",
      "outbound_payments",
      "outbound_transfers"
    ]

  def __inner_types__ do
    %{
      "card_issuing" => Stripe.Resources.ToggleSettings,
      "deposit_insurance" => Stripe.Resources.ToggleSettings,
      "financial_addresses" => Stripe.Resources.FinancialAddresses,
      "inbound_transfers" => Stripe.Resources.InboundTransfers,
      "intra_stripe_flows" => Stripe.Resources.ToggleSettings,
      "outbound_payments" => Stripe.Resources.OutboundPayments,
      "outbound_transfers" => Stripe.Resources.OutboundTransfers
    }
  end
end
