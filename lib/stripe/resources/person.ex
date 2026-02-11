# File generated from our OpenAPI spec
defmodule Stripe.Resources.Person do
  @moduledoc """
  Person

  This is an object representing a person associated with a Stripe account.

  A platform can only access a subset of data in a person for an account where [account.controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.

  See the [Standard onboarding](https://stripe.com/connect/standard-accounts) or [Express onboarding](https://stripe.com/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](https://stripe.com/connect/handling-api-verification#person-information).
  """

  @typedoc """
  * `account` - The account the person is associated with. Max length: 5000.
  * `additional_tos_acceptances` - Expandable.
  * `address` - Expandable.
  * `address_kana` - The Kana variation of the person's address (Japan only). Nullable. Expandable.
  * `address_kanji` - The Kanji variation of the person's address (Japan only). Nullable. Expandable.
  * `created` - Time at which the object was created. Measured in seconds since the Unix epoch. Format: Unix timestamp.
  * `dob` - Expandable.
  * `email` - The person's email address. Also available for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. Max length: 5000. Nullable.
  * `first_name` - The person's first name. Also available for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. Max length: 5000. Nullable.
  * `first_name_kana` - The Kana variation of the person's first name (Japan only). Also available for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. Max length: 5000. Nullable.
  * `first_name_kanji` - The Kanji variation of the person's first name (Japan only). Also available for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. Max length: 5000. Nullable.
  * `full_name_aliases` - A list of alternate names or aliases that the person is known by. Also available for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  * `future_requirements` - Information about the [upcoming new requirements for this person](https://docs.stripe.com/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when. Nullable. Expandable.
  * `gender` - The person's gender. Nullable.
  * `id` - Unique identifier for the object. Max length: 5000.
  * `id_number_provided` - Whether the person's `id_number` was provided. True if either the full ID number was provided or if only the required part of the ID number was provided (ex. last four of an individual's SSN for the US indicated by `ssn_last_4_provided`).
  * `id_number_secondary_provided` - Whether the person's `id_number_secondary` was provided.
  * `last_name` - The person's last name. Also available for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. Max length: 5000. Nullable.
  * `last_name_kana` - The Kana variation of the person's last name (Japan only). Also available for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. Max length: 5000. Nullable.
  * `last_name_kanji` - The Kanji variation of the person's last name (Japan only). Also available for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. Max length: 5000. Nullable.
  * `maiden_name` - The person's maiden name. Max length: 5000. Nullable.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  * `nationality` - The country where the person is a national. Max length: 5000. Nullable.
  * `object` - String representing the object's type. Objects of the same type share the same value. Possible values: `person`.
  * `phone` - The person's phone number. Max length: 5000. Nullable.
  * `political_exposure` - Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction. Possible values: `existing`, `none`.
  * `registered_address` - Expandable.
  * `relationship` - Expandable.
  * `requirements` - Information about the requirements for this person, including what information needs to be collected, and by when. Nullable. Expandable.
  * `ssn_last_4_provided` - Whether the last four digits of the person's Social Security number have been provided (U.S. only).
  * `us_cfpb_data` - Demographic data related to the person. Nullable. Expandable.
  * `verification` - Expandable.
  """
  @type t :: %__MODULE__{
          account: String.t() | nil,
          additional_tos_acceptances: __MODULE__.AdditionalTosAcceptances.t() | nil,
          address: Stripe.Resources.Address.t() | nil,
          address_kana: __MODULE__.AddressKana.t() | nil,
          address_kanji: __MODULE__.AddressKanji.t() | nil,
          created: integer(),
          dob: __MODULE__.Dob.t() | nil,
          email: String.t() | nil,
          first_name: String.t() | nil,
          first_name_kana: String.t() | nil,
          first_name_kanji: String.t() | nil,
          full_name_aliases: [String.t()] | nil,
          future_requirements: __MODULE__.FutureRequirements.t() | nil,
          gender: String.t() | nil,
          id: String.t(),
          id_number_provided: boolean() | nil,
          id_number_secondary_provided: boolean() | nil,
          last_name: String.t() | nil,
          last_name_kana: String.t() | nil,
          last_name_kanji: String.t() | nil,
          maiden_name: String.t() | nil,
          metadata: map() | nil,
          nationality: String.t() | nil,
          object: String.t(),
          phone: String.t() | nil,
          political_exposure: String.t() | nil,
          registered_address: Stripe.Resources.Address.t() | nil,
          relationship: __MODULE__.Relationship.t() | nil,
          requirements: __MODULE__.Requirements.t() | nil,
          ssn_last_4_provided: boolean() | nil,
          us_cfpb_data: __MODULE__.UsCfpbData.t() | nil,
          verification: __MODULE__.Verification.t() | nil
        }

  defstruct [
    :account,
    :additional_tos_acceptances,
    :address,
    :address_kana,
    :address_kanji,
    :created,
    :dob,
    :email,
    :first_name,
    :first_name_kana,
    :first_name_kanji,
    :full_name_aliases,
    :future_requirements,
    :gender,
    :id,
    :id_number_provided,
    :id_number_secondary_provided,
    :last_name,
    :last_name_kana,
    :last_name_kanji,
    :maiden_name,
    :metadata,
    :nationality,
    :object,
    :phone,
    :political_exposure,
    :registered_address,
    :relationship,
    :requirements,
    :ssn_last_4_provided,
    :us_cfpb_data,
    :verification
  ]

  @object_name "person"
  def object_name, do: @object_name

  def expandable_fields,
    do: [
      "additional_tos_acceptances",
      "address",
      "address_kana",
      "address_kanji",
      "dob",
      "future_requirements",
      "registered_address",
      "relationship",
      "requirements",
      "us_cfpb_data",
      "verification"
    ]

  defmodule AdditionalTosAcceptances do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `account` - Details on the legal guardian's acceptance of the main Stripe service agreement. Nullable.
    """
    @type t :: %__MODULE__{
            account: __MODULE__.Account.t() | nil
          }
    defstruct [:account]

    defmodule Account do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `date` - The Unix timestamp marking when the legal guardian accepted the service agreement. Format: Unix timestamp. Nullable.
      * `ip` - The IP address from which the legal guardian accepted the service agreement. Max length: 5000. Nullable.
      * `user_agent` - The user agent of the browser from which the legal guardian accepted the service agreement. Max length: 5000. Nullable.
      """
      @type t :: %__MODULE__{
              date: integer() | nil,
              ip: String.t() | nil,
              user_agent: String.t() | nil
            }
      defstruct [:date, :ip, :user_agent]
    end

    def __inner_types__ do
      %{
        "account" => __MODULE__.Account
      }
    end
  end

  defmodule AddressKana do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `city` - City/Ward. Max length: 5000. Nullable.
    * `country` - Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)). Max length: 5000. Nullable.
    * `line1` - Block/Building number. Max length: 5000. Nullable.
    * `line2` - Building details. Max length: 5000. Nullable.
    * `postal_code` - ZIP or postal code. Max length: 5000. Nullable.
    * `state` - Prefecture. Max length: 5000. Nullable.
    * `town` - Town/cho-me. Max length: 5000. Nullable.
    """
    @type t :: %__MODULE__{
            city: String.t() | nil,
            country: String.t() | nil,
            line1: String.t() | nil,
            line2: String.t() | nil,
            postal_code: String.t() | nil,
            state: String.t() | nil,
            town: String.t() | nil
          }
    defstruct [:city, :country, :line1, :line2, :postal_code, :state, :town]
  end

  defmodule AddressKanji do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `city` - City/Ward. Max length: 5000. Nullable.
    * `country` - Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)). Max length: 5000. Nullable.
    * `line1` - Block/Building number. Max length: 5000. Nullable.
    * `line2` - Building details. Max length: 5000. Nullable.
    * `postal_code` - ZIP or postal code. Max length: 5000. Nullable.
    * `state` - Prefecture. Max length: 5000. Nullable.
    * `town` - Town/cho-me. Max length: 5000. Nullable.
    """
    @type t :: %__MODULE__{
            city: String.t() | nil,
            country: String.t() | nil,
            line1: String.t() | nil,
            line2: String.t() | nil,
            postal_code: String.t() | nil,
            state: String.t() | nil,
            town: String.t() | nil
          }
    defstruct [:city, :country, :line1, :line2, :postal_code, :state, :town]
  end

  defmodule Dob do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `day` - The day of birth, between 1 and 31. Nullable.
    * `month` - The month of birth, between 1 and 12. Nullable.
    * `year` - The four-digit year of birth. Nullable.
    """
    @type t :: %__MODULE__{
            day: integer() | nil,
            month: integer() | nil,
            year: integer() | nil
          }
    defstruct [:day, :month, :year]
  end

  defmodule FutureRequirements do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `alternatives` - Fields that are due and can be resolved by providing the corresponding alternative fields instead. Many alternatives can list the same `original_fields_due`, and any of these alternatives can serve as a pathway for attempting to resolve the fields again. Re-providing `original_fields_due` also serves as a pathway for attempting to resolve the fields again. Nullable.
    * `currently_due` - Fields that need to be resolved to keep the person's account enabled. If not resolved by the account's `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash, and may immediately become `past_due`, but the account may also be given a grace period depending on the account's enablement state prior to transition.
    * `errors` - Details about validation and verification failures for `due` requirements that must be resolved.
    * `eventually_due` - Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well, and the account's `future_requirements[current_deadline]` becomes set.
    * `past_due` - Fields that haven't been resolved by the account's `requirements.current_deadline`. These fields need to be resolved to enable the person's account. `future_requirements.past_due` is a subset of `requirements.past_due`.
    * `pending_verification` - Fields that are being reviewed, or might become required depending on the results of a review. If the review fails, these fields can move to `eventually_due`, `currently_due`, `past_due` or `alternatives`. Fields might appear in `eventually_due`, `currently_due`, `past_due` or `alternatives` and in `pending_verification` if one verification fails but another is still pending.
    """
    @type t :: %__MODULE__{
            alternatives: [__MODULE__.Alternatives.t()] | nil,
            currently_due: [String.t()] | nil,
            errors: [__MODULE__.Errors.t()] | nil,
            eventually_due: [String.t()] | nil,
            past_due: [String.t()] | nil,
            pending_verification: [String.t()] | nil
          }
    defstruct [
      :alternatives,
      :currently_due,
      :errors,
      :eventually_due,
      :past_due,
      :pending_verification
    ]

    defmodule Alternatives do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `alternative_fields_due` - Fields that can be provided to resolve all fields in `original_fields_due`.
      * `original_fields_due` - Fields that are due and can be resolved by providing all fields in `alternative_fields_due`.
      """
      @type t :: %__MODULE__{
              alternative_fields_due: [String.t()] | nil,
              original_fields_due: [String.t()] | nil
            }
      defstruct [:alternative_fields_due, :original_fields_due]
    end

    defmodule Errors do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `code` - The code for the type of error. Possible values: `external_request`, `information_missing`, `invalid_address_city_state_postal_code`, `invalid_address_highway_contract_box`, `invalid_address_private_mailbox`, `invalid_business_profile_name`, `invalid_business_profile_name_denylisted`, `invalid_company_name_denylisted`, `invalid_dob_age_over_maximum`, `invalid_dob_age_under_18`, `invalid_dob_age_under_minimum`, `invalid_product_description_length`, `invalid_product_description_url_match`, `invalid_representative_country`, `invalid_signator`, `invalid_statement_descriptor_business_mismatch`, `invalid_statement_descriptor_denylisted`, `invalid_statement_descriptor_length`, `invalid_statement_descriptor_prefix_denylisted`, `invalid_statement_descriptor_prefix_mismatch`, `invalid_street_address`, `invalid_tax_id`, `invalid_tax_id_format`, `invalid_tos_acceptance`, `invalid_url_denylisted`, `invalid_url_format`, `invalid_url_length`, `invalid_url_web_presence_detected`, `invalid_url_website_business_information_mismatch`, `invalid_url_website_empty`, `invalid_url_website_inaccessible`, `invalid_url_website_inaccessible_geoblocked`, `invalid_url_website_inaccessible_password_protected`, `invalid_url_website_incomplete`, `invalid_url_website_incomplete_cancellation_policy`, `invalid_url_website_incomplete_customer_service_details`, `invalid_url_website_incomplete_legal_restrictions`, `invalid_url_website_incomplete_refund_policy`, `invalid_url_website_incomplete_return_policy`, `invalid_url_website_incomplete_terms_and_conditions`, `invalid_url_website_incomplete_under_construction`, `invalid_url_website_other`, `invalid_value_other`, `unsupported_business_type`, `verification_directors_mismatch`, `verification_document_address_mismatch`, `verification_document_address_missing`, `verification_document_corrupt`, `verification_document_country_not_supported`, `verification_document_directors_mismatch`, `verification_document_dob_mismatch`, `verification_document_duplicate_type`, `verification_document_expired`, `verification_document_failed_copy`, `verification_document_failed_greyscale`, `verification_document_failed_other`, `verification_document_failed_test_mode`, `verification_document_fraudulent`, `verification_document_id_number_mismatch`, `verification_document_id_number_missing`, `verification_document_incomplete`, `verification_document_invalid`, `verification_document_issue_or_expiry_date_missing`, `verification_document_manipulated`, `verification_document_missing_back`, `verification_document_missing_front`, `verification_document_name_mismatch`, `verification_document_name_missing`, `verification_document_nationality_mismatch`, `verification_document_not_readable`, `verification_document_not_signed`, `verification_document_not_uploaded`, `verification_document_photo_mismatch`, `verification_document_too_large`, `verification_document_type_not_supported`, `verification_extraneous_directors`, `verification_failed_address_match`, `verification_failed_authorizer_authority`, `verification_failed_business_iec_number`, `verification_failed_document_match`, `verification_failed_id_number_match`, `verification_failed_keyed_identity`, `verification_failed_keyed_match`, `verification_failed_name_match`, `verification_failed_other`, `verification_failed_representative_authority`, `verification_failed_residential_address`, `verification_failed_tax_id_match`, `verification_failed_tax_id_not_issued`, `verification_legal_entity_structure_mismatch`, `verification_missing_directors`, `verification_missing_executives`, `verification_missing_owners`, `verification_rejected_ownership_exemption_reason`, `verification_requires_additional_memorandum_of_associations`, `verification_requires_additional_proof_of_registration`, `verification_supportability`.
      * `reason` - An informative message that indicates the error type and provides additional details about the error. Max length: 5000.
      * `requirement` - The specific user onboarding requirement field (in the requirements hash) that needs to be resolved. Max length: 5000.
      """
      @type t :: %__MODULE__{
              code: String.t() | nil,
              reason: String.t() | nil,
              requirement: String.t() | nil
            }
      defstruct [:code, :reason, :requirement]
    end

    def __inner_types__ do
      %{
        "alternatives" => __MODULE__.Alternatives,
        "errors" => __MODULE__.Errors
      }
    end
  end

  defmodule Relationship do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `authorizer` - Whether the person is the authorizer of the account's representative. Nullable.
    * `director` - Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations. Nullable.
    * `executive` - Whether the person has significant responsibility to control, manage, or direct the organization. Nullable.
    * `legal_guardian` - Whether the person is the legal guardian of the account's representative. Nullable.
    * `owner` - Whether the person is an owner of the account’s legal entity. Nullable.
    * `percent_ownership` - The percent owned by the person of the account's legal entity. Nullable.
    * `representative` - Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account. Nullable.
    * `title` - The person's title (e.g., CEO, Support Engineer). Max length: 5000. Nullable.
    """
    @type t :: %__MODULE__{
            authorizer: boolean() | nil,
            director: boolean() | nil,
            executive: boolean() | nil,
            legal_guardian: boolean() | nil,
            owner: boolean() | nil,
            percent_ownership: float() | nil,
            representative: boolean() | nil,
            title: String.t() | nil
          }
    defstruct [
      :authorizer,
      :director,
      :executive,
      :legal_guardian,
      :owner,
      :percent_ownership,
      :representative,
      :title
    ]
  end

  defmodule Requirements do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `alternatives` - Fields that are due and can be resolved by providing the corresponding alternative fields instead. Many alternatives can list the same `original_fields_due`, and any of these alternatives can serve as a pathway for attempting to resolve the fields again. Re-providing `original_fields_due` also serves as a pathway for attempting to resolve the fields again. Nullable.
    * `currently_due` - Fields that need to be resolved to keep the person's account enabled. If not resolved by the account's `current_deadline`, these fields will appear in `past_due` as well, and the account is disabled.
    * `errors` - Details about validation and verification failures for `due` requirements that must be resolved.
    * `eventually_due` - Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well, and the account's `current_deadline` becomes set.
    * `past_due` - Fields that haven't been resolved by `current_deadline`. These fields need to be resolved to enable the person's account.
    * `pending_verification` - Fields that are being reviewed, or might become required depending on the results of a review. If the review fails, these fields can move to `eventually_due`, `currently_due`, `past_due` or `alternatives`. Fields might appear in `eventually_due`, `currently_due`, `past_due` or `alternatives` and in `pending_verification` if one verification fails but another is still pending.
    """
    @type t :: %__MODULE__{
            alternatives: [__MODULE__.Alternatives.t()] | nil,
            currently_due: [String.t()] | nil,
            errors: [__MODULE__.Errors.t()] | nil,
            eventually_due: [String.t()] | nil,
            past_due: [String.t()] | nil,
            pending_verification: [String.t()] | nil
          }
    defstruct [
      :alternatives,
      :currently_due,
      :errors,
      :eventually_due,
      :past_due,
      :pending_verification
    ]

    defmodule Alternatives do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `alternative_fields_due` - Fields that can be provided to resolve all fields in `original_fields_due`.
      * `original_fields_due` - Fields that are due and can be resolved by providing all fields in `alternative_fields_due`.
      """
      @type t :: %__MODULE__{
              alternative_fields_due: [String.t()] | nil,
              original_fields_due: [String.t()] | nil
            }
      defstruct [:alternative_fields_due, :original_fields_due]
    end

    defmodule Errors do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `code` - The code for the type of error. Possible values: `external_request`, `information_missing`, `invalid_address_city_state_postal_code`, `invalid_address_highway_contract_box`, `invalid_address_private_mailbox`, `invalid_business_profile_name`, `invalid_business_profile_name_denylisted`, `invalid_company_name_denylisted`, `invalid_dob_age_over_maximum`, `invalid_dob_age_under_18`, `invalid_dob_age_under_minimum`, `invalid_product_description_length`, `invalid_product_description_url_match`, `invalid_representative_country`, `invalid_signator`, `invalid_statement_descriptor_business_mismatch`, `invalid_statement_descriptor_denylisted`, `invalid_statement_descriptor_length`, `invalid_statement_descriptor_prefix_denylisted`, `invalid_statement_descriptor_prefix_mismatch`, `invalid_street_address`, `invalid_tax_id`, `invalid_tax_id_format`, `invalid_tos_acceptance`, `invalid_url_denylisted`, `invalid_url_format`, `invalid_url_length`, `invalid_url_web_presence_detected`, `invalid_url_website_business_information_mismatch`, `invalid_url_website_empty`, `invalid_url_website_inaccessible`, `invalid_url_website_inaccessible_geoblocked`, `invalid_url_website_inaccessible_password_protected`, `invalid_url_website_incomplete`, `invalid_url_website_incomplete_cancellation_policy`, `invalid_url_website_incomplete_customer_service_details`, `invalid_url_website_incomplete_legal_restrictions`, `invalid_url_website_incomplete_refund_policy`, `invalid_url_website_incomplete_return_policy`, `invalid_url_website_incomplete_terms_and_conditions`, `invalid_url_website_incomplete_under_construction`, `invalid_url_website_other`, `invalid_value_other`, `unsupported_business_type`, `verification_directors_mismatch`, `verification_document_address_mismatch`, `verification_document_address_missing`, `verification_document_corrupt`, `verification_document_country_not_supported`, `verification_document_directors_mismatch`, `verification_document_dob_mismatch`, `verification_document_duplicate_type`, `verification_document_expired`, `verification_document_failed_copy`, `verification_document_failed_greyscale`, `verification_document_failed_other`, `verification_document_failed_test_mode`, `verification_document_fraudulent`, `verification_document_id_number_mismatch`, `verification_document_id_number_missing`, `verification_document_incomplete`, `verification_document_invalid`, `verification_document_issue_or_expiry_date_missing`, `verification_document_manipulated`, `verification_document_missing_back`, `verification_document_missing_front`, `verification_document_name_mismatch`, `verification_document_name_missing`, `verification_document_nationality_mismatch`, `verification_document_not_readable`, `verification_document_not_signed`, `verification_document_not_uploaded`, `verification_document_photo_mismatch`, `verification_document_too_large`, `verification_document_type_not_supported`, `verification_extraneous_directors`, `verification_failed_address_match`, `verification_failed_authorizer_authority`, `verification_failed_business_iec_number`, `verification_failed_document_match`, `verification_failed_id_number_match`, `verification_failed_keyed_identity`, `verification_failed_keyed_match`, `verification_failed_name_match`, `verification_failed_other`, `verification_failed_representative_authority`, `verification_failed_residential_address`, `verification_failed_tax_id_match`, `verification_failed_tax_id_not_issued`, `verification_legal_entity_structure_mismatch`, `verification_missing_directors`, `verification_missing_executives`, `verification_missing_owners`, `verification_rejected_ownership_exemption_reason`, `verification_requires_additional_memorandum_of_associations`, `verification_requires_additional_proof_of_registration`, `verification_supportability`.
      * `reason` - An informative message that indicates the error type and provides additional details about the error. Max length: 5000.
      * `requirement` - The specific user onboarding requirement field (in the requirements hash) that needs to be resolved. Max length: 5000.
      """
      @type t :: %__MODULE__{
              code: String.t() | nil,
              reason: String.t() | nil,
              requirement: String.t() | nil
            }
      defstruct [:code, :reason, :requirement]
    end

    def __inner_types__ do
      %{
        "alternatives" => __MODULE__.Alternatives,
        "errors" => __MODULE__.Errors
      }
    end
  end

  defmodule UsCfpbData do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `ethnicity_details` - The persons ethnicity details Nullable.
    * `race_details` - The persons race details Nullable.
    * `self_identified_gender` - The persons self-identified gender Max length: 5000. Nullable.
    """
    @type t :: %__MODULE__{
            ethnicity_details: __MODULE__.EthnicityDetails.t() | nil,
            race_details: __MODULE__.RaceDetails.t() | nil,
            self_identified_gender: String.t() | nil
          }
    defstruct [:ethnicity_details, :race_details, :self_identified_gender]

    defmodule EthnicityDetails do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `ethnicity` - The persons ethnicity Nullable.
      * `ethnicity_other` - Please specify your origin, when other is selected. Max length: 5000. Nullable.
      """
      @type t :: %__MODULE__{
              ethnicity: [String.t()] | nil,
              ethnicity_other: String.t() | nil
            }
      defstruct [:ethnicity, :ethnicity_other]
    end

    defmodule RaceDetails do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `race` - The persons race. Nullable.
      * `race_other` - Please specify your race, when other is selected. Max length: 5000. Nullable.
      """
      @type t :: %__MODULE__{
              race: [String.t()] | nil,
              race_other: String.t() | nil
            }
      defstruct [:race, :race_other]
    end

    def __inner_types__ do
      %{
        "ethnicity_details" => __MODULE__.EthnicityDetails,
        "race_details" => __MODULE__.RaceDetails
      }
    end
  end

  defmodule Verification do
    @moduledoc "Nested struct within the parent resource."

    @typedoc """
    * `additional_document` - A document showing address, either a passport, local ID card, or utility bill from a well-known utility company. Nullable.
    * `details` - A user-displayable string describing the verification state for the person. For example, this may say "Provided identity information could not be verified". Max length: 5000. Nullable.
    * `details_code` - One of `document_address_mismatch`, `document_dob_mismatch`, `document_duplicate_type`, `document_id_number_mismatch`, `document_name_mismatch`, `document_nationality_mismatch`, `failed_keyed_identity`, or `failed_other`. A machine-readable code specifying the verification state for the person. Max length: 5000. Nullable.
    * `document`
    * `status` - The state of verification for the person. Possible values are `unverified`, `pending`, or `verified`. Please refer [guide](https://docs.stripe.com/connect/handling-api-verification) to handle verification updates. Max length: 5000.
    """
    @type t :: %__MODULE__{
            additional_document: __MODULE__.AdditionalDocument.t() | nil,
            details: String.t() | nil,
            details_code: String.t() | nil,
            document: __MODULE__.Document.t() | nil,
            status: String.t() | nil
          }
    defstruct [:additional_document, :details, :details_code, :document, :status]

    defmodule AdditionalDocument do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `back` - The back of an ID returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `identity_document`. Nullable.
      * `details` - A user-displayable string describing the verification state of this document. For example, if a document is uploaded and the picture is too fuzzy, this may say "Identity document is too unclear to read". Max length: 5000. Nullable.
      * `details_code` - One of `document_corrupt`, `document_country_not_supported`, `document_expired`, `document_failed_copy`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_failed_greyscale`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_missing_back`, `document_missing_front`, `document_not_readable`, `document_not_uploaded`, `document_photo_mismatch`, `document_too_large`, or `document_type_not_supported`. A machine-readable code specifying the verification state for this document. Max length: 5000. Nullable.
      * `front` - The front of an ID returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `identity_document`. Nullable.
      """
      @type t :: %__MODULE__{
              back: String.t() | Stripe.Resources.File.t() | nil,
              details: String.t() | nil,
              details_code: String.t() | nil,
              front: String.t() | Stripe.Resources.File.t() | nil
            }
      defstruct [:back, :details, :details_code, :front]
    end

    defmodule Document do
      @moduledoc "Nested struct within the parent resource."

      @typedoc """
      * `back` - The back of an ID returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `identity_document`. Nullable.
      * `details` - A user-displayable string describing the verification state of this document. For example, if a document is uploaded and the picture is too fuzzy, this may say "Identity document is too unclear to read". Max length: 5000. Nullable.
      * `details_code` - One of `document_corrupt`, `document_country_not_supported`, `document_expired`, `document_failed_copy`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_failed_greyscale`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_missing_back`, `document_missing_front`, `document_not_readable`, `document_not_uploaded`, `document_photo_mismatch`, `document_too_large`, or `document_type_not_supported`. A machine-readable code specifying the verification state for this document. Max length: 5000. Nullable.
      * `front` - The front of an ID returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `identity_document`. Nullable.
      """
      @type t :: %__MODULE__{
              back: String.t() | Stripe.Resources.File.t() | nil,
              details: String.t() | nil,
              details_code: String.t() | nil,
              front: String.t() | Stripe.Resources.File.t() | nil
            }
      defstruct [:back, :details, :details_code, :front]
    end

    def __inner_types__ do
      %{
        "additional_document" => __MODULE__.AdditionalDocument,
        "document" => __MODULE__.Document
      }
    end
  end

  def __inner_types__ do
    %{
      "additional_tos_acceptances" => __MODULE__.AdditionalTosAcceptances,
      "address" => Stripe.Resources.Address,
      "address_kana" => __MODULE__.AddressKana,
      "address_kanji" => __MODULE__.AddressKanji,
      "dob" => __MODULE__.Dob,
      "future_requirements" => __MODULE__.FutureRequirements,
      "registered_address" => Stripe.Resources.Address,
      "relationship" => __MODULE__.Relationship,
      "requirements" => __MODULE__.Requirements,
      "us_cfpb_data" => __MODULE__.UsCfpbData,
      "verification" => __MODULE__.Verification
    }
  end
end
