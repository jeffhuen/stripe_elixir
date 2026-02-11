# File generated from our OpenAPI spec
defmodule Stripe.Resources.Terminal.OnboardingLink do
  @moduledoc """
  TerminalOnboardingLinkOnboardingLink

  Returns redirect links used for onboarding onto Tap to Pay on iPhone.
  """

  @typedoc """
  * `link_options` - Expandable.
  * `link_type` - The type of link being generated. Possible values: `apple_terms_and_conditions`.
  * `object` - Possible values: `terminal.onboarding_link`.
  * `on_behalf_of` - Stripe account ID to generate the link for. Max length: 5000. Nullable.
  * `redirect_url` - The link passed back to the user for their onboarding. Max length: 5000.
  """
  @type t :: %__MODULE__{
          link_options: map(),
          link_type: String.t(),
          object: String.t(),
          on_behalf_of: String.t(),
          redirect_url: String.t()
        }

  defstruct [:link_options, :link_type, :object, :on_behalf_of, :redirect_url]

  @object_name "terminal.onboarding_link"
  def object_name, do: @object_name

  def expandable_fields, do: ["link_options"]

  defmodule LinkOptions do
    @moduledoc false

    @typedoc """
    * `apple_terms_and_conditions` - The options associated with the Apple Terms and Conditions link type. Nullable.
    """
    @type t :: %__MODULE__{
            apple_terms_and_conditions: map() | nil
          }
    defstruct [:apple_terms_and_conditions]

    defmodule AppleTermsAndConditions do
      @moduledoc false

      @typedoc """
      * `allow_relinking` - Whether the link should also support users relinking their Apple account. Nullable.
      * `merchant_display_name` - The business name of the merchant accepting Apple's Terms and Conditions. Max length: 5000.
      """
      @type t :: %__MODULE__{
              allow_relinking: boolean() | nil,
              merchant_display_name: String.t() | nil
            }
      defstruct [:allow_relinking, :merchant_display_name]
    end

    def __inner_types__ do
      %{
        "apple_terms_and_conditions" => __MODULE__.AppleTermsAndConditions
      }
    end
  end

  def __inner_types__ do
    %{
      "link_options" => __MODULE__.LinkOptions
    }
  end
end
