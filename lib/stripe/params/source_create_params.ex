# File generated from our OpenAPI spec
defmodule Stripe.Params.SourceCreateParams do
  @moduledoc "Parameters for source create."

  @typedoc """
  * `amount` - Amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources. Not supported for `receiver` type sources, where charge amount may not be specified until funds land.
  * `currency` - Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready. Format: ISO 4217 currency code.
  * `customer` - The `Customer` to whom the original source is attached to. Must be set when the original source is not a `Source` (e.g., `Card`). Max length: 500.
  * `expand` - Specifies which fields in the response should be expanded.
  * `flow` - The authentication `flow` of the source to create. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`. It is generally inferred unless a type supports multiple flows. Possible values: `code_verification`, `none`, `receiver`, `redirect`. Max length: 5000.
  * `mandate` - Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
  * `metadata`
  * `original_source` - The source to share. Max length: 5000.
  * `owner` - Information about the owner of the payment instrument that may be used or required by particular source types.
  * `receiver` - Optional parameters for the receiver flow. Can be set only if the source is a receiver (`flow` is `receiver`).
  * `redirect` - Parameters required for the redirect flow. Required if the source is authenticated by a redirect (`flow` is `redirect`).
  * `source_order` - Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
  * `statement_descriptor` - An arbitrary string to be displayed on your customer's statement. As an example, if your website is `RunClub` and the item you're charging for is a race ticket, you may want to specify a `statement_descriptor` of `RunClub 5K race ticket.` While many payment types will display this information, some may not display it at all. Max length: 5000.
  * `token` - An optional token used to create the source. When passed, token properties will override source parameters. Max length: 5000.
  * `type` - The `type` of the source to create. Required unless `customer` and `original_source` are specified (see the [Cloning card Sources](https://docs.stripe.com/sources/connect#cloning-card-sources) guide) Max length: 5000.
  * `usage` - Possible values: `reusable`, `single_use`. Max length: 5000.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          currency: String.t() | nil,
          customer: String.t() | nil,
          expand: [String.t()] | nil,
          flow: String.t() | nil,
          mandate: map() | nil,
          metadata: map() | nil,
          original_source: String.t() | nil,
          owner: map() | nil,
          receiver: map() | nil,
          redirect: map() | nil,
          source_order: map() | nil,
          statement_descriptor: String.t() | nil,
          token: String.t() | nil,
          type: String.t() | nil,
          usage: String.t() | nil
        }

  defstruct [
    :amount,
    :currency,
    :customer,
    :expand,
    :flow,
    :mandate,
    :metadata,
    :original_source,
    :owner,
    :receiver,
    :redirect,
    :source_order,
    :statement_descriptor,
    :token,
    :type,
    :usage
  ]

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

  defmodule Receiver do
    @moduledoc "Nested parameters."

    @typedoc """
    * `refund_attributes_method` - The method Stripe should use to request information needed to process a refund or mispayment. Either `email` (an email is sent directly to the customer) or `manual` (a `source.refund_attributes_required` event is sent to your webhooks endpoint). Refer to each payment method's documentation to learn which refund attributes may be required. Possible values: `email`, `manual`, `none`. Max length: 5000.
    """
    @type t :: %__MODULE__{
            refund_attributes_method: String.t() | nil
          }
    defstruct [:refund_attributes_method]
  end

  defmodule Redirect do
    @moduledoc "Nested parameters."

    @typedoc """
    * `return_url` - The URL you provide to redirect the customer back to you after they authenticated their payment. It can use your application URI scheme in the context of a mobile application.
    """
    @type t :: %__MODULE__{
            return_url: String.t() | nil
          }
    defstruct [:return_url]
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
