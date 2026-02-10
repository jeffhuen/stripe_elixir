# File generated from our OpenAPI spec
defmodule Stripe.Params.PaymentRecordReportPaymentParams do
  @moduledoc "Parameters for payment record report payment."

  @typedoc """
  * `amount_requested` - The amount you initially requested for this payment.
  * `customer_details` - Customer information for this payment.
  * `customer_presence` - Indicates whether the customer was present in your checkout flow during this payment. Possible values: `off_session`, `on_session`.
  * `description` - An arbitrary string attached to the object. Often useful for displaying to users. Max length: 5000.
  * `expand` - Specifies which fields in the response should be expanded.
  * `failed` - Information about the payment attempt failure.
  * `guaranteed` - Information about the payment attempt guarantee.
  * `initiated_at` - When the reported payment was initiated. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `outcome` - The outcome of the reported payment. Possible values: `failed`, `guaranteed`.
  * `payment_method_details` - Information about the Payment Method debited for this payment.
  * `processor_details` - Processor information for this payment.
  * `shipping_details` - Shipping information for this payment.
  """
  @type t :: %__MODULE__{
          amount_requested: map(),
          customer_details: map() | nil,
          customer_presence: String.t() | nil,
          description: String.t() | nil,
          expand: [String.t()] | nil,
          failed: map() | nil,
          guaranteed: map() | nil,
          initiated_at: integer(),
          metadata: map() | nil,
          outcome: String.t() | nil,
          payment_method_details: map(),
          processor_details: map() | nil,
          shipping_details: map() | nil
        }

  defstruct [
    :amount_requested,
    :customer_details,
    :customer_presence,
    :description,
    :expand,
    :failed,
    :guaranteed,
    :initiated_at,
    :metadata,
    :outcome,
    :payment_method_details,
    :processor_details,
    :shipping_details
  ]

  defmodule AmountRequested do
    @moduledoc "Nested parameters."

    @typedoc """
    * `currency` - Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Format: ISO 4217 currency code.
    * `value` - A positive integer representing the amount in the currency's [minor unit](https://docs.stripe.com/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
    """
    @type t :: %__MODULE__{
            currency: String.t() | nil,
            value: integer() | nil
          }
    defstruct [:currency, :value]
  end

  defmodule CustomerDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `customer` - The customer who made the payment. Max length: 5000.
    * `email` - The customer's phone number.
    * `name` - The customer's name. Max length: 5000.
    * `phone` - The customer's phone number.
    """
    @type t :: %__MODULE__{
            customer: String.t() | nil,
            email: String.t() | nil,
            name: String.t() | nil,
            phone: String.t() | nil
          }
    defstruct [:customer, :email, :name, :phone]
  end

  defmodule Failed do
    @moduledoc "Nested parameters."

    @typedoc """
    * `failed_at` - When the reported payment failed. Measured in seconds since the Unix epoch. Format: Unix timestamp.
    """
    @type t :: %__MODULE__{
            failed_at: integer() | nil
          }
    defstruct [:failed_at]
  end

  defmodule Guaranteed do
    @moduledoc "Nested parameters."

    @typedoc """
    * `guaranteed_at` - When the reported payment was guaranteed. Measured in seconds since the Unix epoch. Format: Unix timestamp.
    """
    @type t :: %__MODULE__{
            guaranteed_at: integer() | nil
          }
    defstruct [:guaranteed_at]
  end

  defmodule PaymentMethodDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `billing_details` - The billing details associated with the method of payment.
    * `custom` - Information about the custom (user-defined) payment method used to make this payment.
    * `payment_method` - ID of the Stripe Payment Method used to make this payment. Max length: 5000.
    * `type` - The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type. Possible values: `custom`.
    """
    @type t :: %__MODULE__{
            billing_details: map() | nil,
            custom: map() | nil,
            payment_method: String.t() | nil,
            type: String.t() | nil
          }
    defstruct [:billing_details, :custom, :payment_method, :type]
  end

  defmodule ProcessorDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `custom` - Information about the custom processor used to make this payment.
    * `type` - The type of the processor details. An additional hash is included on processor_details with a name matching this value. It contains additional information specific to the processor. Possible values: `custom`.
    """
    @type t :: %__MODULE__{
            custom: map() | nil,
            type: String.t() | nil
          }
    defstruct [:custom, :type]
  end

  defmodule ShippingDetails do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - The physical shipping address.
    * `name` - The shipping recipient's name. Max length: 5000.
    * `phone` - The shipping recipient's phone number.
    """
    @type t :: %__MODULE__{
            address: map() | nil,
            name: String.t() | nil,
            phone: String.t() | nil
          }
    defstruct [:address, :name, :phone]
  end
end
