# File generated from our OpenAPI spec
defmodule Stripe.Params.Terminal.ReaderCollectInputsParams do
  @moduledoc "Parameters for reader collect inputs."

  @typedoc """
  * `expand` - Specifies which fields in the response should be expanded.
  * `inputs` - List of inputs to be collected from the customer using the Reader. Maximum 5 inputs.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  """
  @type t :: %__MODULE__{
          expand: [String.t()] | nil,
          inputs: [__MODULE__.Inputs.t()],
          metadata: %{String.t() => String.t()} | nil
        }

  defstruct [:expand, :inputs, :metadata]

  defmodule Inputs do
    @moduledoc "Nested parameters."

    @typedoc """
    * `custom_text` - Customize the text which will be displayed while collecting this input
    * `required` - Indicate that this input is required, disabling the skip button
    * `selection` - Options for the `selection` input
    * `toggles` - List of toggles to be displayed and customization for the toggles
    * `type` - The type of input to collect Possible values: `email`, `numeric`, `phone`, `selection`, `signature`, `text`.
    """
    @type t :: %__MODULE__{
            custom_text: __MODULE__.CustomText.t() | nil,
            required: boolean() | nil,
            selection: __MODULE__.Selection.t() | nil,
            toggles: [__MODULE__.Toggles.t()] | nil,
            type: String.t() | nil
          }
    defstruct [:custom_text, :required, :selection, :toggles, :type]
  end
end
