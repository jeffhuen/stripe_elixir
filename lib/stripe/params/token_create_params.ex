# File generated from our OpenAPI spec
defmodule Stripe.Params.TokenCreateParams do
  @moduledoc "Parameters for token create."

  @typedoc """
  * `account` - Information for the account this token represents.
  * `bank_account` - The bank account this token will represent.
  * `card` - The card this token will represent. If you also pass in a customer, the card must be the ID of a card belonging to the customer. Otherwise, if you do not pass in a customer, this is a dictionary containing a user's credit card details, with the options described below.
  * `customer` - Create a token for the customer, which is owned by the application's account. You can only use this with an [OAuth access token](https://docs.stripe.com/connect/standard-accounts) or [Stripe-Account header](https://docs.stripe.com/connect/authentication). Learn more about [cloning saved payment methods](https://docs.stripe.com/connect/cloning-saved-payment-methods). Max length: 5000.
  * `cvc_update` - The updated CVC value this token represents.
  * `expand` - Specifies which fields in the response should be expanded.
  * `person` - Information for the person this token represents.
  * `pii` - The PII this token represents.
  """
  @type t :: %__MODULE__{
          account: map() | nil,
          bank_account: map() | nil,
          card: map() | nil,
          customer: String.t() | nil,
          cvc_update: map() | nil,
          expand: [String.t()] | nil,
          person: map() | nil,
          pii: map() | nil
        }

  defstruct [:account, :bank_account, :card, :customer, :cvc_update, :expand, :person, :pii]

  defmodule Account do
    @moduledoc "Nested parameters."

    @typedoc """
    * `business_type` - The business type. Possible values: `company`, `government_entity`, `individual`, `non_profit`.
    * `company` - Information about the company or business.
    * `individual` - Information about the person represented by the account.
    * `tos_shown_and_accepted` - Whether the user described by the data in the token has been shown [the Stripe Connected Account Agreement](https://stripe.com/connect/account-tokens#stripe-connected-account-agreement). When creating an account token to create a new Connect account, this value must be `true`.
    """
    @type t :: %__MODULE__{
            business_type: String.t() | nil,
            company: map() | nil,
            individual: map() | nil,
            tos_shown_and_accepted: boolean() | nil
          }
    defstruct [:business_type, :company, :individual, :tos_shown_and_accepted]
  end

  defmodule BankAccount do
    @moduledoc "Nested parameters."

    @typedoc """
    * `account_holder_name` - The name of the person or business that owns the bank account. This field is required when attaching the bank account to a `Customer` object. Max length: 5000.
    * `account_holder_type` - The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object. Possible values: `company`, `individual`. Max length: 5000.
    * `account_number` - The account number for the bank account, in string form. Must be a checking account. Max length: 5000.
    * `account_type` - The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`. Possible values: `checking`, `futsu`, `savings`, `toza`. Max length: 5000.
    * `country` - The country in which the bank account is located. Max length: 5000.
    * `currency` - The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](https://docs.stripe.com/payouts) Format: ISO 4217 currency code.
    * `payment_method` - The ID of a Payment Method with a `type` of `us_bank_account`. The Payment Method's bank account information will be copied and returned as a Bank Account Token. This parameter is exclusive with respect to all other parameters in the `bank_account` hash. You must include the top-level `customer` parameter if the Payment Method is attached to a `Customer` object. If the Payment Method is not attached to a `Customer` object, it will be consumed and cannot be used again. You may not use Payment Methods which were created by a Setup Intent with `attach_to_self=true`. Max length: 5000.
    * `routing_number` - The routing number, sort code, or other country-appropriate institution number for the bank account. For US bank accounts, this is required and should be the ACH routing number, not the wire routing number. If you are providing an IBAN for `account_number`, this field is not required. Max length: 5000.
    """
    @type t :: %__MODULE__{
            account_holder_name: String.t() | nil,
            account_holder_type: String.t() | nil,
            account_number: String.t() | nil,
            account_type: String.t() | nil,
            country: String.t() | nil,
            currency: String.t() | nil,
            payment_method: String.t() | nil,
            routing_number: String.t() | nil
          }
    defstruct [
      :account_holder_name,
      :account_holder_type,
      :account_number,
      :account_type,
      :country,
      :currency,
      :payment_method,
      :routing_number
    ]
  end

  defmodule CvcUpdate do
    @moduledoc "Nested parameters."

    @typedoc """
    * `cvc` - The CVC value, in string form. Max length: 5000.
    """
    @type t :: %__MODULE__{
            cvc: String.t() | nil
          }
    defstruct [:cvc]
  end

  defmodule Person do
    @moduledoc "Nested parameters."

    @typedoc """
    * `additional_tos_acceptances` - Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
    * `address` - The person's address.
    * `address_kana` - The Kana variation of the person's address (Japan only).
    * `address_kanji` - The Kanji variation of the person's address (Japan only).
    * `dob` - The person's date of birth.
    * `documents` - Documents that may be submitted to satisfy various informational requests.
    * `email` - The person's email address.
    * `first_name` - The person's first name. Max length: 5000.
    * `first_name_kana` - The Kana variation of the person's first name (Japan only). Max length: 5000.
    * `first_name_kanji` - The Kanji variation of the person's first name (Japan only). Max length: 5000.
    * `full_name_aliases` - A list of alternate names or aliases that the person is known by.
    * `gender` - The person's gender (International regulations require either "male" or "female").
    * `id_number` - The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii). Max length: 5000.
    * `id_number_secondary` - The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii). Max length: 5000.
    * `last_name` - The person's last name. Max length: 5000.
    * `last_name_kana` - The Kana variation of the person's last name (Japan only). Max length: 5000.
    * `last_name_kanji` - The Kanji variation of the person's last name (Japan only). Max length: 5000.
    * `maiden_name` - The person's maiden name. Max length: 5000.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `nationality` - The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or "XX" if unavailable. Max length: 5000.
    * `phone` - The person's phone number.
    * `political_exposure` - Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction. Possible values: `existing`, `none`.
    * `registered_address` - The person's registered address.
    * `relationship` - The relationship that this person has with the account's legal entity.
    * `ssn_last_4` - The last four digits of the person's Social Security number (U.S. only).
    * `us_cfpb_data` - Demographic data related to the person.
    * `verification` - The person's verification status.
    """
    @type t :: %__MODULE__{
            additional_tos_acceptances: map() | nil,
            address: map() | nil,
            address_kana: map() | nil,
            address_kanji: map() | nil,
            dob: map() | nil,
            documents: map() | nil,
            email: String.t() | nil,
            first_name: String.t() | nil,
            first_name_kana: String.t() | nil,
            first_name_kanji: String.t() | nil,
            full_name_aliases: map() | nil,
            gender: String.t() | nil,
            id_number: String.t() | nil,
            id_number_secondary: String.t() | nil,
            last_name: String.t() | nil,
            last_name_kana: String.t() | nil,
            last_name_kanji: String.t() | nil,
            maiden_name: String.t() | nil,
            metadata: map() | nil,
            nationality: String.t() | nil,
            phone: String.t() | nil,
            political_exposure: String.t() | nil,
            registered_address: map() | nil,
            relationship: map() | nil,
            ssn_last_4: String.t() | nil,
            us_cfpb_data: map() | nil,
            verification: map() | nil
          }
    defstruct [
      :additional_tos_acceptances,
      :address,
      :address_kana,
      :address_kanji,
      :dob,
      :documents,
      :email,
      :first_name,
      :first_name_kana,
      :first_name_kanji,
      :full_name_aliases,
      :gender,
      :id_number,
      :id_number_secondary,
      :last_name,
      :last_name_kana,
      :last_name_kanji,
      :maiden_name,
      :metadata,
      :nationality,
      :phone,
      :political_exposure,
      :registered_address,
      :relationship,
      :ssn_last_4,
      :us_cfpb_data,
      :verification
    ]
  end

  defmodule Pii do
    @moduledoc "Nested parameters."

    @typedoc """
    * `id_number` - The `id_number` for the PII, in string form. Max length: 5000.
    """
    @type t :: %__MODULE__{
            id_number: String.t() | nil
          }
    defstruct [:id_number]
  end
end
