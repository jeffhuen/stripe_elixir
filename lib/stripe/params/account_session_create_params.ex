# File generated from our OpenAPI spec
defmodule Stripe.Params.AccountSessionCreateParams do
  @moduledoc "Parameters for account session create."

  @typedoc """
  * `account` - The identifier of the account to create an Account Session for.
  * `components` - Each key of the dictionary represents an embedded component, and each embedded component maps to its configuration (e.g. whether it has been enabled or not).
  * `expand` - Specifies which fields in the response should be expanded.
  """
  @type t :: %__MODULE__{
          account: String.t(),
          components: map(),
          expand: [String.t()] | nil
        }

  defstruct [:account, :components, :expand]

  defmodule Components do
    @moduledoc "Nested parameters."

    @typedoc """
    * `account_management` - Configuration for the [account management](https://stripe.com/connect/supported-embedded-components/account-management/) embedded component.
    * `account_onboarding` - Configuration for the [account onboarding](https://stripe.com/connect/supported-embedded-components/account-onboarding/) embedded component.
    * `balances` - Configuration for the [balances](https://stripe.com/connect/supported-embedded-components/balances/) embedded component.
    * `disputes_list` - Configuration for the [disputes list](https://stripe.com/connect/supported-embedded-components/disputes-list/) embedded component.
    * `documents` - Configuration for the [documents](https://stripe.com/connect/supported-embedded-components/documents/) embedded component.
    * `financial_account` - Configuration for the [financial account](https://stripe.com/connect/supported-embedded-components/financial-account/) embedded component.
    * `financial_account_transactions` - Configuration for the [financial account transactions](https://stripe.com/connect/supported-embedded-components/financial-account-transactions/) embedded component.
    * `instant_payouts_promotion` - Configuration for the [instant payouts promotion](https://stripe.com/connect/supported-embedded-components/instant-payouts-promotion/) embedded component.
    * `issuing_card` - Configuration for the [issuing card](https://stripe.com/connect/supported-embedded-components/issuing-card/) embedded component.
    * `issuing_cards_list` - Configuration for the [issuing cards list](https://stripe.com/connect/supported-embedded-components/issuing-cards-list/) embedded component.
    * `notification_banner` - Configuration for the [notification banner](https://stripe.com/connect/supported-embedded-components/notification-banner/) embedded component.
    * `payment_details` - Configuration for the [payment details](https://stripe.com/connect/supported-embedded-components/payment-details/) embedded component.
    * `payment_disputes` - Configuration for the [payment disputes](https://stripe.com/connect/supported-embedded-components/payment-disputes/) embedded component.
    * `payments` - Configuration for the [payments](https://stripe.com/connect/supported-embedded-components/payments/) embedded component.
    * `payout_details` - Configuration for the [payout details](https://stripe.com/connect/supported-embedded-components/payout-details/) embedded component.
    * `payouts` - Configuration for the [payouts](https://stripe.com/connect/supported-embedded-components/payouts/) embedded component.
    * `payouts_list` - Configuration for the [payouts list](https://stripe.com/connect/supported-embedded-components/payouts-list/) embedded component.
    * `tax_registrations` - Configuration for the [tax registrations](https://stripe.com/connect/supported-embedded-components/tax-registrations/) embedded component.
    * `tax_settings` - Configuration for the [tax settings](https://stripe.com/connect/supported-embedded-components/tax-settings/) embedded component.
    """
    @type t :: %__MODULE__{
            account_management: map() | nil,
            account_onboarding: map() | nil,
            balances: map() | nil,
            disputes_list: map() | nil,
            documents: map() | nil,
            financial_account: map() | nil,
            financial_account_transactions: map() | nil,
            instant_payouts_promotion: map() | nil,
            issuing_card: map() | nil,
            issuing_cards_list: map() | nil,
            notification_banner: map() | nil,
            payment_details: map() | nil,
            payment_disputes: map() | nil,
            payments: map() | nil,
            payout_details: map() | nil,
            payouts: map() | nil,
            payouts_list: map() | nil,
            tax_registrations: map() | nil,
            tax_settings: map() | nil
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
  end
end
