# File generated from our OpenAPI spec
defmodule Stripe.Params.V2.Core.AccountTokenCreateParams do
  @moduledoc "Parameters for account token create."

  @typedoc """
  * `contact_email` - The default contact email address for the Account. Required when configuring the account as a merchant or recipient.
  * `contact_phone` - The default contact phone for the Account.
  * `display_name` - A descriptive name for the Account. This name will be surfaced in the Stripe Dashboard and on any invoices sent to the Account.
  * `identity` - Information about the company, individual, and business represented by the Account.
  """
  @type t :: %__MODULE__{
          contact_email: String.t() | nil,
          contact_phone: String.t() | nil,
          display_name: String.t() | nil,
          identity: map() | nil
        }

  defstruct [:contact_email, :contact_phone, :display_name, :identity]

  defmodule Identity do
    @moduledoc "Nested parameters."

    @typedoc """
    * `attestations` - Attestations from the identity's key people, e.g. owners, executives, directors, representatives.
    * `business_details` - Information about the company or business.
    * `entity_type` - The entity type. Possible values: `company`, `government_entity`, `individual`, `non_profit`.
    * `individual` - Information about the person represented by the account.
    """
    @type t :: %__MODULE__{
            attestations: map() | nil,
            business_details: map() | nil,
            entity_type: String.t() | nil,
            individual: map() | nil
          }
    defstruct [:attestations, :business_details, :entity_type, :individual]
  end
end
