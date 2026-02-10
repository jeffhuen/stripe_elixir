# File generated from our OpenAPI spec
defmodule Stripe.Resources.PaymentMethodDomain do
  @moduledoc """
  PaymentMethodDomainResourcePaymentMethodDomain

  A payment method domain represents a web domain that you have registered with Stripe.
  Stripe Elements use registered payment method domains to control where certain payment methods are shown.

  Related guide: [Payment method domains](https://docs.stripe.com/payments/payment-methods/pmd-registration).
  """

  @typedoc """
  * `amazon_pay` - Expandable.
  * `apple_pay` - Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `domain_name` - The domain name that this payment method domain object represents. Max length: 5000.
  * `enabled` - Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements.
  * `google_pay` - Expandable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `klarna` - Expandable.
  * `link` - Expandable.
  * `livemode` - Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `payment_method_domain`.
  * `paypal` - Expandable.
  """
  @type t :: %__MODULE__{
          amazon_pay: map(),
          apple_pay: map(),
          created: integer(),
          domain_name: String.t(),
          enabled: boolean(),
          google_pay: map(),
          id: String.t(),
          klarna: map(),
          link: map(),
          livemode: boolean(),
          object: String.t(),
          paypal: map()
        }

  defstruct [
    :amazon_pay,
    :apple_pay,
    :created,
    :domain_name,
    :enabled,
    :google_pay,
    :id,
    :klarna,
    :link,
    :livemode,
    :object,
    :paypal
  ]

  @object_name "payment_method_domain"
  def object_name, do: @object_name

  def expandable_fields, do: ["amazon_pay", "apple_pay", "google_pay", "klarna", "link", "paypal"]
end
