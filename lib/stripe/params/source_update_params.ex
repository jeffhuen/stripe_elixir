# File generated from our OpenAPI spec
defmodule Stripe.Params.SourceUpdateParams do
  @moduledoc "Parameters for source update."

  @typedoc """
  * `amount` - Amount associated with the source.
  * `expand` - Specifies which fields in the response should be expanded.
  * `mandate` - Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `owner` - Information about the owner of the payment instrument that may be used or required by particular source types.
  * `source_order` - Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          expand: [String.t()] | nil,
          mandate: map() | nil,
          metadata: map() | nil,
          owner: map() | nil,
          source_order: map() | nil
        }

  defstruct [:amount, :expand, :mandate, :metadata, :owner, :source_order]

  defmodule Mandate do
    @moduledoc "Nested parameters."

    @typedoc """
    * `acceptance` - The parameters required to notify Stripe of a mandate acceptance or refusal by the customer.
    * `amount` - The amount specified by the mandate. (Leave null for a mandate covering all amounts)
    * `currency` - The currency specified by the mandate. (Must match `currency` of the source) Format: ISO 4217 currency code.
    * `interval` - The interval of debits permitted by the mandate. Either `one_time` (just permitting a single debit), `scheduled` (with debits on an agreed schedule or for clearly-defined events), or `variable`(for debits with any frequency) Possible values: `one_time`, `scheduled`, `variable`. Max length: 5000.
    * `notification_method` - The method Stripe should use to notify the customer of upcoming debit instructions and/or mandate confirmation as required by the underlying debit network. Either `email` (an email is sent directly to the customer), `manual` (a `source.mandate_notification` event is sent to your webhooks endpoint and you should handle the notification) or `none` (the underlying debit network does not require any notification). Possible values: `deprecated_none`, `email`, `manual`, `none`, `stripe_email`. Max length: 5000.
    """
    @type t :: %__MODULE__{
            acceptance: map() | nil,
            amount: map() | nil,
            currency: String.t() | nil,
            interval: String.t() | nil,
            notification_method: String.t() | nil
          }
    defstruct [:acceptance, :amount, :currency, :interval, :notification_method]
  end

  defmodule Owner do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - Owner's address.
    * `email` - Owner's email address.
    * `name` - Owner's full name. Max length: 5000.
    * `phone` - Owner's phone number. Max length: 5000.
    """
    @type t :: %__MODULE__{
            address: map() | nil,
            email: String.t() | nil,
            name: String.t() | nil,
            phone: String.t() | nil
          }
    defstruct [:address, :email, :name, :phone]
  end

  defmodule SourceOrder do
    @moduledoc "Nested parameters."

    @typedoc """
    * `items` - List of items constituting the order.
    * `shipping` - Shipping address for the order. Required if any of the SKUs are for products that have `shippable` set to true.
    """
    @type t :: %__MODULE__{
            items: [map()] | nil,
            shipping: map() | nil
          }
    defstruct [:items, :shipping]
  end
end
