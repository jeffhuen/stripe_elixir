# File generated from our OpenAPI spec
defmodule Stripe.Params.Treasury.OutboundPaymentCreateParams do
  @moduledoc "Parameters for outbound payment create."

  @typedoc """
  * `amount` - Amount (in cents) to be transferred.
  * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
  * `customer` - ID of the customer to whom the OutboundPayment is sent. Must match the Customer attached to the `destination_payment_method` passed in. Max length: 5000.
  * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 5000.
  * `destination_payment_method` - The PaymentMethod to use as the payment instrument for the OutboundPayment. Exclusive with `destination_payment_method_data`. Max length: 5000.
  * `destination_payment_method_data` - Hash used to generate the PaymentMethod to be used for this OutboundPayment. Exclusive with `destination_payment_method`.
  * `destination_payment_method_options` - Payment method-specific configuration for this OutboundPayment.
  * `end_user_details` - End user details.
  * `expand` - Specifies which fields in the response should be expanded.
  * `financial_account` - The FinancialAccount to pull funds from.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `statement_descriptor` - The description that appears on the receiving end for this OutboundPayment (for example, bank statement for external bank transfer). Maximum 10 characters for `ach` payments, 140 characters for `us_domestic_wire` payments, or 500 characters for `stripe` network transfers. Can only include -#.$&*, spaces, and alphanumeric characters. The default value is "payment". Max length: 5000.
  """
  @type t :: %__MODULE__{
          amount: integer(),
          currency: String.t(),
          customer: String.t() | nil,
          description: String.t() | nil,
          destination_payment_method: String.t() | nil,
          destination_payment_method_data: map() | nil,
          destination_payment_method_options: map() | nil,
          end_user_details: map() | nil,
          expand: [String.t()] | nil,
          financial_account: String.t(),
          metadata: map() | nil,
          statement_descriptor: String.t() | nil
        }

  defstruct [
    :amount,
    :currency,
    :customer,
    :description,
    :destination_payment_method,
    :destination_payment_method_data,
    :destination_payment_method_options,
    :end_user_details,
    :expand,
    :financial_account,
    :metadata,
    :statement_descriptor
  ]

  defmodule DestinationPaymentMethodData do
    @moduledoc "Nested parameters."

    @typedoc """
    * `billing_details` - Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
    * `financial_account` - Required if type is set to `financial_account`. The FinancialAccount ID to send funds to.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `type` - The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type. Possible values: `financial_account`, `us_bank_account`.
    * `us_bank_account` - Required hash if type is set to `us_bank_account`.
    """
    @type t :: %__MODULE__{
            billing_details: map() | nil,
            financial_account: String.t() | nil,
            metadata: map() | nil,
            type: String.t() | nil,
            us_bank_account: map() | nil
          }
    defstruct [:billing_details, :financial_account, :metadata, :type, :us_bank_account]
  end

  defmodule DestinationPaymentMethodOptions do
    @moduledoc "Nested parameters."

    @typedoc """
    * `us_bank_account` - Optional fields for `us_bank_account`.
    """
    @type t :: %__MODULE__{
            us_bank_account: map() | nil
          }
    defstruct [:us_bank_account]
  end

  defmodule EndUserDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `ip_address` - IP address of the user initiating the OutboundPayment. Must be supplied if `present` is set to `true`.
    * `present` - `True` if the OutboundPayment creation request is being made on behalf of an end user by a platform. Otherwise, `false`.
    """
    @type t :: %__MODULE__{
            ip_address: String.t() | nil,
            present: boolean() | nil
          }
    defstruct [:ip_address, :present]
  end
end
