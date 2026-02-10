# File generated from our OpenAPI spec
defmodule Stripe.Resources.Components do
  @moduledoc """
  ConnectEmbeddedAccountSessionCreateComponents
  """

  @typedoc """
  * `account_management` - Expandable.
  * `account_onboarding` - Expandable.
  * `balances` - Expandable.
  * `disputes_list` - Expandable.
  * `documents` - Expandable.
  * `financial_account` - Expandable.
  * `financial_account_transactions` - Expandable.
  * `instant_payouts_promotion` - Expandable.
  * `issuing_card` - Expandable.
  * `issuing_cards_list` - Expandable.
  * `notification_banner` - Expandable.
  * `payment_details` - Expandable.
  * `payment_disputes` - Expandable.
  * `payments` - Expandable.
  * `payout_details` - Expandable.
  * `payouts` - Expandable.
  * `payouts_list` - Expandable.
  * `tax_registrations` - Expandable.
  * `tax_settings` - Expandable.
  """
  @type t :: %__MODULE__{
          account_management: String.t() | map(),
          account_onboarding: String.t() | map(),
          balances: String.t() | map(),
          disputes_list: String.t() | map(),
          documents: String.t() | map(),
          financial_account: String.t() | map(),
          financial_account_transactions: String.t() | map(),
          instant_payouts_promotion: String.t() | map(),
          issuing_card: String.t() | map(),
          issuing_cards_list: String.t() | map(),
          notification_banner: String.t() | map(),
          payment_details: String.t() | map(),
          payment_disputes: String.t() | map(),
          payments: String.t() | map(),
          payout_details: String.t() | map(),
          payouts: String.t() | map(),
          payouts_list: String.t() | map(),
          tax_registrations: String.t() | map(),
          tax_settings: String.t() | map()
        }

  defstruct [
    :account_management,
    :account_onboarding,
    :balances,
    :disputes_list,
    :documents,
    :financial_account,
    :financial_account_transactions,
    :instant_payouts_promotion,
    :issuing_card,
    :issuing_cards_list,
    :notification_banner,
    :payment_details,
    :payment_disputes,
    :payments,
    :payout_details,
    :payouts,
    :payouts_list,
    :tax_registrations,
    :tax_settings
  ]

  @object_name "connect_embedded_account_session_create_components"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "account_management",
      "account_onboarding",
      "balances",
      "disputes_list",
      "documents",
      "financial_account",
      "financial_account_transactions",
      "instant_payouts_promotion",
      "issuing_card",
      "issuing_cards_list",
      "notification_banner",
      "payment_details",
      "payment_disputes",
      "payments",
      "payout_details",
      "payouts",
      "payouts_list",
      "tax_registrations",
      "tax_settings"
    ]
end
