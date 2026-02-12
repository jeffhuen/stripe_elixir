# File generated from our OpenAPI spec
defmodule Stripe.Params.Issuing.DisputeUpdateParams do
  @moduledoc "Parameters for dispute update."

  @typedoc """
  * `amount` - The dispute amount in the card's currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  * `evidence` - Evidence provided for the dispute.
  * `expand` - Specifies which fields in the response should be expanded.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          evidence: __MODULE__.Evidence.t() | nil,
          expand: [String.t()] | nil,
          metadata: map() | nil
        }

  defstruct [:amount, :evidence, :expand, :metadata]

  defmodule Evidence do
    @moduledoc "Nested parameters."

    @typedoc """
    * `canceled` - Evidence provided when `reason` is 'canceled'.
    * `duplicate` - Evidence provided when `reason` is 'duplicate'.
    * `fraudulent` - Evidence provided when `reason` is 'fraudulent'.
    * `merchandise_not_as_described` - Evidence provided when `reason` is 'merchandise_not_as_described'.
    * `no_valid_authorization` - Evidence provided when `reason` is 'no_valid_authorization'.
    * `not_received` - Evidence provided when `reason` is 'not_received'.
    * `other` - Evidence provided when `reason` is 'other'.
    * `reason` - The reason for filing the dispute. The evidence should be submitted in the field of the same name. Possible values: `canceled`, `duplicate`, `fraudulent`, `merchandise_not_as_described`, `no_valid_authorization`, `not_received`, `other`, `service_not_as_described`.
    * `service_not_as_described` - Evidence provided when `reason` is 'service_not_as_described'.
    """
    @type t :: %__MODULE__{
            canceled: map() | nil,
            duplicate: map() | nil,
            fraudulent: map() | nil,
            merchandise_not_as_described: map() | nil,
            no_valid_authorization: map() | nil,
            not_received: map() | nil,
            other: map() | nil,
            reason: String.t() | nil,
            service_not_as_described: map() | nil
          }
    defstruct [
      :canceled,
      :duplicate,
      :fraudulent,
      :merchandise_not_as_described,
      :no_valid_authorization,
      :not_received,
      :other,
      :reason,
      :service_not_as_described
    ]
  end
end
