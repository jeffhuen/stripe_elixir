# File generated from our OpenAPI spec
defmodule Stripe.Params.AccountUpdateParams do
  @moduledoc "Parameters for account update."

  @typedoc """
  * `account_token` - An [account token](https://api.stripe.com#create_account_token), used to securely provide details to the account. Max length: 5000.
  * `business_profile` - Business information about the account.
  * `business_type` - The business type. Once you create an [Account Link](https://docs.stripe.com/api/account_links) or [Account Session](https://docs.stripe.com/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. Possible values: `company`, `government_entity`, `individual`, `non_profit`.
  * `capabilities` - Each key of the dictionary represents a capability, and each capability
  maps to its settings (for example, whether it has been requested or not). Each
  capability is inactive until you have provided its specific
  requirements and Stripe has verified them. An account might have some
  of its requested capabilities be active and some be inactive.

  Required when [account.controller.stripe_dashboard.type](https://docs.stripe.com/api/accounts/create#create_account-controller-dashboard-type)
  is `none`, which includes Custom accounts.
  * `company` - Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](https://docs.stripe.com/api/account_links) or [Account Session](https://docs.stripe.com/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
  * `default_currency` - Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://docs.stripe.com/payouts). Format: ISO 4217 currency code.
  * `documents` - Documents that may be submitted to satisfy various informational requests.
  * `email` - The email address of the account holder. This is only to make the account easier to identify to you. If [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, Stripe doesn't email the account without your consent.
  * `expand` - Specifies which fields in the response should be expanded.
  * `external_account` - A card or bank account to attach to the account for receiving [payouts](https://stripe.com/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](https://stripe.com/js), or a dictionary, as documented in the `external_account` parameter for [bank account](https://stripe.com/api#account_create_bank_account) creation. 

  By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the [bank account](https://stripe.com/api#account_create_bank_account) or [card creation](https://stripe.com/api#account_create_card) APIs. After you create an [Account Link](https://docs.stripe.com/api/account_links) or [Account Session](https://docs.stripe.com/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. Max length: 5000.
  * `groups` - A hash of account group type to tokens. These are account groups this account should be added to.
  * `individual` - Information about the person represented by the account. This field is null unless `business_type` is set to `individual`. Once you create an [Account Link](https://docs.stripe.com/api/account_links) or [Account Session](https://docs.stripe.com/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
  * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  * `settings` - Options for customizing how the account functions within Stripe.
  * `tos_acceptance` - Details on the account's acceptance of the [Stripe Services Agreement](https://stripe.com/connect/updating-accounts#tos-acceptance). This property can only be updated for accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. This property defaults to a `full` service agreement when empty.
  """
  @type t :: %__MODULE__{
          account_token: String.t() | nil,
          business_profile: __MODULE__.BusinessProfile.t() | nil,
          business_type: String.t() | nil,
          capabilities: __MODULE__.Capabilities.t() | nil,
          company: __MODULE__.Company.t() | nil,
          default_currency: String.t() | nil,
          documents: __MODULE__.Documents.t() | nil,
          email: String.t() | nil,
          expand: [String.t()] | nil,
          external_account: String.t() | nil,
          groups: __MODULE__.Groups.t() | nil,
          individual: __MODULE__.Individual.t() | nil,
          metadata: map() | nil,
          settings: __MODULE__.Settings.t() | nil,
          tos_acceptance: __MODULE__.TosAcceptance.t() | nil
        }

  defstruct [
    :account_token,
    :business_profile,
    :business_type,
    :capabilities,
    :company,
    :default_currency,
    :documents,
    :email,
    :expand,
    :external_account,
    :groups,
    :individual,
    :metadata,
    :settings,
    :tos_acceptance
  ]

  defmodule BusinessProfile do
    @moduledoc "Nested parameters."

    @typedoc """
    * `annual_revenue` - The applicant's gross annual revenue for its preceding fiscal year.
    * `estimated_worker_count` - An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
    * `mcc` - [The merchant category code for the account](https://stripe.com/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide. Max length: 4.
    * `minority_owned_business_designation` - Whether the business is a minority-owned, women-owned, and/or LGBTQI+ -owned business.
    * `monthly_estimated_revenue` - An estimate of the monthly revenue of the business. Only accepted for accounts in Brazil and India.
    * `name` - The customer-facing business name. Max length: 5000.
    * `product_description` - Internal-only description of the product sold by, or service provided by, the business. Used by Stripe for risk and underwriting purposes. Max length: 40000.
    * `support_address` - A publicly available mailing address for sending support issues to.
    * `support_email` - A publicly available email address for sending support issues to.
    * `support_phone` - A publicly available phone number to call with support issues. Max length: 5000.
    * `support_url` - A publicly available website for handling support issues.
    * `url` - The business's publicly available website.
    """
    @type t :: %__MODULE__{
            annual_revenue: __MODULE__.AnnualRevenue.t() | nil,
            estimated_worker_count: integer() | nil,
            mcc: String.t() | nil,
            minority_owned_business_designation: [String.t()] | nil,
            monthly_estimated_revenue: __MODULE__.MonthlyEstimatedRevenue.t() | nil,
            name: String.t() | nil,
            product_description: String.t() | nil,
            support_address: __MODULE__.SupportAddress.t() | nil,
            support_email: String.t() | nil,
            support_phone: String.t() | nil,
            support_url: map() | nil,
            url: String.t() | nil
          }
    defstruct [
      :annual_revenue,
      :estimated_worker_count,
      :mcc,
      :minority_owned_business_designation,
      :monthly_estimated_revenue,
      :name,
      :product_description,
      :support_address,
      :support_email,
      :support_phone,
      :support_url,
      :url
    ]
  end

  defmodule Capabilities do
    @moduledoc "Nested parameters."

    @typedoc """
    * `acss_debit_payments` - The acss_debit_payments capability.
    * `affirm_payments` - The affirm_payments capability.
    * `afterpay_clearpay_payments` - The afterpay_clearpay_payments capability.
    * `alma_payments` - The alma_payments capability.
    * `amazon_pay_payments` - The amazon_pay_payments capability.
    * `au_becs_debit_payments` - The au_becs_debit_payments capability.
    * `bacs_debit_payments` - The bacs_debit_payments capability.
    * `bancontact_payments` - The bancontact_payments capability.
    * `bank_transfer_payments` - The bank_transfer_payments capability.
    * `billie_payments` - The billie_payments capability.
    * `blik_payments` - The blik_payments capability.
    * `boleto_payments` - The boleto_payments capability.
    * `card_issuing` - The card_issuing capability.
    * `card_payments` - The card_payments capability.
    * `cartes_bancaires_payments` - The cartes_bancaires_payments capability.
    * `cashapp_payments` - The cashapp_payments capability.
    * `crypto_payments` - The crypto_payments capability.
    * `eps_payments` - The eps_payments capability.
    * `fpx_payments` - The fpx_payments capability.
    * `gb_bank_transfer_payments` - The gb_bank_transfer_payments capability.
    * `giropay_payments` - The giropay_payments capability.
    * `grabpay_payments` - The grabpay_payments capability.
    * `ideal_payments` - The ideal_payments capability.
    * `india_international_payments` - The india_international_payments capability.
    * `jcb_payments` - The jcb_payments capability.
    * `jp_bank_transfer_payments` - The jp_bank_transfer_payments capability.
    * `kakao_pay_payments` - The kakao_pay_payments capability.
    * `klarna_payments` - The klarna_payments capability.
    * `konbini_payments` - The konbini_payments capability.
    * `kr_card_payments` - The kr_card_payments capability.
    * `legacy_payments` - The legacy_payments capability.
    * `link_payments` - The link_payments capability.
    * `mb_way_payments` - The mb_way_payments capability.
    * `mobilepay_payments` - The mobilepay_payments capability.
    * `multibanco_payments` - The multibanco_payments capability.
    * `mx_bank_transfer_payments` - The mx_bank_transfer_payments capability.
    * `naver_pay_payments` - The naver_pay_payments capability.
    * `nz_bank_account_becs_debit_payments` - The nz_bank_account_becs_debit_payments capability.
    * `oxxo_payments` - The oxxo_payments capability.
    * `p24_payments` - The p24_payments capability.
    * `pay_by_bank_payments` - The pay_by_bank_payments capability.
    * `payco_payments` - The payco_payments capability.
    * `paynow_payments` - The paynow_payments capability.
    * `payto_payments` - The payto_payments capability.
    * `pix_payments` - The pix_payments capability.
    * `promptpay_payments` - The promptpay_payments capability.
    * `revolut_pay_payments` - The revolut_pay_payments capability.
    * `samsung_pay_payments` - The samsung_pay_payments capability.
    * `satispay_payments` - The satispay_payments capability.
    * `sepa_bank_transfer_payments` - The sepa_bank_transfer_payments capability.
    * `sepa_debit_payments` - The sepa_debit_payments capability.
    * `sofort_payments` - The sofort_payments capability.
    * `swish_payments` - The swish_payments capability.
    * `tax_reporting_us_1099_k` - The tax_reporting_us_1099_k capability.
    * `tax_reporting_us_1099_misc` - The tax_reporting_us_1099_misc capability.
    * `transfers` - The transfers capability.
    * `treasury` - The treasury capability.
    * `twint_payments` - The twint_payments capability.
    * `us_bank_account_ach_payments` - The us_bank_account_ach_payments capability.
    * `us_bank_transfer_payments` - The us_bank_transfer_payments capability.
    * `zip_payments` - The zip_payments capability.
    """
    @type t :: %__MODULE__{
            acss_debit_payments: __MODULE__.AcssDebitPayments.t() | nil,
            affirm_payments: __MODULE__.AffirmPayments.t() | nil,
            afterpay_clearpay_payments: __MODULE__.AfterpayClearpayPayments.t() | nil,
            alma_payments: __MODULE__.AlmaPayments.t() | nil,
            amazon_pay_payments: __MODULE__.AmazonPayPayments.t() | nil,
            au_becs_debit_payments: __MODULE__.AuBecsDebitPayments.t() | nil,
            bacs_debit_payments: __MODULE__.BacsDebitPayments.t() | nil,
            bancontact_payments: __MODULE__.BancontactPayments.t() | nil,
            bank_transfer_payments: __MODULE__.BankTransferPayments.t() | nil,
            billie_payments: __MODULE__.BilliePayments.t() | nil,
            blik_payments: __MODULE__.BlikPayments.t() | nil,
            boleto_payments: __MODULE__.BoletoPayments.t() | nil,
            card_issuing: __MODULE__.CardIssuing.t() | nil,
            card_payments: __MODULE__.CardPayments.t() | nil,
            cartes_bancaires_payments: __MODULE__.CartesBancairesPayments.t() | nil,
            cashapp_payments: __MODULE__.CashappPayments.t() | nil,
            crypto_payments: __MODULE__.CryptoPayments.t() | nil,
            eps_payments: __MODULE__.EpsPayments.t() | nil,
            fpx_payments: __MODULE__.FpxPayments.t() | nil,
            gb_bank_transfer_payments: __MODULE__.GbBankTransferPayments.t() | nil,
            giropay_payments: __MODULE__.GiropayPayments.t() | nil,
            grabpay_payments: __MODULE__.GrabpayPayments.t() | nil,
            ideal_payments: __MODULE__.IdealPayments.t() | nil,
            india_international_payments: __MODULE__.IndiaInternationalPayments.t() | nil,
            jcb_payments: __MODULE__.JcbPayments.t() | nil,
            jp_bank_transfer_payments: __MODULE__.JpBankTransferPayments.t() | nil,
            kakao_pay_payments: __MODULE__.KakaoPayPayments.t() | nil,
            klarna_payments: __MODULE__.KlarnaPayments.t() | nil,
            konbini_payments: __MODULE__.KonbiniPayments.t() | nil,
            kr_card_payments: __MODULE__.KrCardPayments.t() | nil,
            legacy_payments: __MODULE__.LegacyPayments.t() | nil,
            link_payments: __MODULE__.LinkPayments.t() | nil,
            mb_way_payments: __MODULE__.MbWayPayments.t() | nil,
            mobilepay_payments: __MODULE__.MobilepayPayments.t() | nil,
            multibanco_payments: __MODULE__.MultibancoPayments.t() | nil,
            mx_bank_transfer_payments: __MODULE__.MxBankTransferPayments.t() | nil,
            naver_pay_payments: __MODULE__.NaverPayPayments.t() | nil,
            nz_bank_account_becs_debit_payments:
              __MODULE__.NzBankAccountBecsDebitPayments.t() | nil,
            oxxo_payments: __MODULE__.OxxoPayments.t() | nil,
            p24_payments: __MODULE__.P24Payments.t() | nil,
            pay_by_bank_payments: __MODULE__.PayByBankPayments.t() | nil,
            payco_payments: __MODULE__.PaycoPayments.t() | nil,
            paynow_payments: __MODULE__.PaynowPayments.t() | nil,
            payto_payments: __MODULE__.PaytoPayments.t() | nil,
            pix_payments: __MODULE__.PixPayments.t() | nil,
            promptpay_payments: __MODULE__.PromptpayPayments.t() | nil,
            revolut_pay_payments: __MODULE__.RevolutPayPayments.t() | nil,
            samsung_pay_payments: __MODULE__.SamsungPayPayments.t() | nil,
            satispay_payments: __MODULE__.SatispayPayments.t() | nil,
            sepa_bank_transfer_payments: __MODULE__.SepaBankTransferPayments.t() | nil,
            sepa_debit_payments: __MODULE__.SepaDebitPayments.t() | nil,
            sofort_payments: __MODULE__.SofortPayments.t() | nil,
            swish_payments: __MODULE__.SwishPayments.t() | nil,
            tax_reporting_us_1099_k: __MODULE__.TaxReportingUs1099K.t() | nil,
            tax_reporting_us_1099_misc: __MODULE__.TaxReportingUs1099Misc.t() | nil,
            transfers: __MODULE__.Transfers.t() | nil,
            treasury: __MODULE__.Treasury.t() | nil,
            twint_payments: __MODULE__.TwintPayments.t() | nil,
            us_bank_account_ach_payments: __MODULE__.UsBankAccountAchPayments.t() | nil,
            us_bank_transfer_payments: __MODULE__.UsBankTransferPayments.t() | nil,
            zip_payments: __MODULE__.ZipPayments.t() | nil
          }
    defstruct [
      :acss_debit_payments,
      :affirm_payments,
      :afterpay_clearpay_payments,
      :alma_payments,
      :amazon_pay_payments,
      :au_becs_debit_payments,
      :bacs_debit_payments,
      :bancontact_payments,
      :bank_transfer_payments,
      :billie_payments,
      :blik_payments,
      :boleto_payments,
      :card_issuing,
      :card_payments,
      :cartes_bancaires_payments,
      :cashapp_payments,
      :crypto_payments,
      :eps_payments,
      :fpx_payments,
      :gb_bank_transfer_payments,
      :giropay_payments,
      :grabpay_payments,
      :ideal_payments,
      :india_international_payments,
      :jcb_payments,
      :jp_bank_transfer_payments,
      :kakao_pay_payments,
      :klarna_payments,
      :konbini_payments,
      :kr_card_payments,
      :legacy_payments,
      :link_payments,
      :mb_way_payments,
      :mobilepay_payments,
      :multibanco_payments,
      :mx_bank_transfer_payments,
      :naver_pay_payments,
      :nz_bank_account_becs_debit_payments,
      :oxxo_payments,
      :p24_payments,
      :pay_by_bank_payments,
      :payco_payments,
      :paynow_payments,
      :payto_payments,
      :pix_payments,
      :promptpay_payments,
      :revolut_pay_payments,
      :samsung_pay_payments,
      :satispay_payments,
      :sepa_bank_transfer_payments,
      :sepa_debit_payments,
      :sofort_payments,
      :swish_payments,
      :tax_reporting_us_1099_k,
      :tax_reporting_us_1099_misc,
      :transfers,
      :treasury,
      :twint_payments,
      :us_bank_account_ach_payments,
      :us_bank_transfer_payments,
      :zip_payments
    ]
  end

  defmodule Company do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - The company's primary address.
    * `address_kana` - The Kana variation of the company's primary address (Japan only).
    * `address_kanji` - The Kanji variation of the company's primary address (Japan only).
    * `directors_provided` - Whether the company's directors have been provided. Set this Boolean to `true` after creating all the company's directors with [the Persons API](https://docs.stripe.com/api/persons) for accounts with a `relationship.director` requirement. This value is not automatically set to `true` after creating directors, so it needs to be updated to indicate all directors have been provided.
    * `directorship_declaration` - This hash is used to attest that the directors information provided to Stripe is both current and correct.
    * `executives_provided` - Whether the company's executives have been provided. Set this Boolean to `true` after creating all the company's executives with [the Persons API](https://docs.stripe.com/api/persons) for accounts with a `relationship.executive` requirement.
    * `export_license_id` - The export license ID number of the company, also referred as Import Export Code (India only). Max length: 5000.
    * `export_purpose_code` - The purpose code to use for export transactions (India only). Max length: 5000.
    * `name` - The company's legal name. Max length: 100.
    * `name_kana` - The Kana variation of the company's legal name (Japan only). Max length: 100.
    * `name_kanji` - The Kanji variation of the company's legal name (Japan only). Max length: 100.
    * `owners_provided` - Whether the company's owners have been provided. Set this Boolean to `true` after creating all the company's owners with [the Persons API](https://docs.stripe.com/api/persons) for accounts with a `relationship.owner` requirement.
    * `ownership_declaration` - This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
    * `ownership_exemption_reason` - This value is used to determine if a business is exempt from providing ultimate beneficial owners. See [this support article](https://support.stripe.com/questions/exemption-from-providing-ownership-details) and [changelog](https://docs.stripe.com/changelog/acacia/2025-01-27/ownership-exemption-reason-accounts-api) for more details. Possible values: `qualified_entity_exceeds_ownership_threshold`, `qualifies_as_financial_institution`.
    * `phone` - The company's phone number (used for verification). Max length: 5000.
    * `registration_date`
    * `registration_number` - The identification number given to a company when it is registered or incorporated, if distinct from the identification number used for filing taxes. (Examples are the CIN for companies and LLP IN for partnerships in India, and the Company Registration Number in Hong Kong). Max length: 5000.
    * `representative_declaration` - This hash is used to attest that the representative is authorized to act as the representative of their legal entity.
    * `structure` - The category identifying the legal structure of the company or legal entity. See [Business structure](https://stripe.com/connect/identity-verification#business-structure) for more details. Pass an empty string to unset this value. Possible values: `free_zone_establishment`, `free_zone_llc`, `government_instrumentality`, `governmental_unit`, `incorporated_non_profit`, `incorporated_partnership`, `limited_liability_partnership`, `llc`, `multi_member_llc`, `private_company`, `private_corporation`, `private_partnership`, `public_company`, `public_corporation`, `public_partnership`, `registered_charity`, `single_member_llc`, `sole_establishment`, `sole_proprietorship`, `tax_exempt_government_instrumentality`, `unincorporated_association`, `unincorporated_non_profit`, `unincorporated_partnership`.
    * `tax_id` - The business ID number of the company, as appropriate for the company’s country. (Examples are an Employer ID Number in the U.S., a Business Number in Canada, or a Company Number in the UK.) Max length: 5000.
    * `tax_id_registrar` - The jurisdiction in which the `tax_id` is registered (Germany-based companies only). Max length: 5000.
    * `vat_id` - The VAT number of the company. Max length: 5000.
    * `verification` - Information on the verification state of the company.
    """
    @type t :: %__MODULE__{
            address: __MODULE__.Address.t() | nil,
            address_kana: __MODULE__.AddressKana.t() | nil,
            address_kanji: __MODULE__.AddressKanji.t() | nil,
            directors_provided: boolean() | nil,
            directorship_declaration: __MODULE__.DirectorshipDeclaration.t() | nil,
            executives_provided: boolean() | nil,
            export_license_id: String.t() | nil,
            export_purpose_code: String.t() | nil,
            name: String.t() | nil,
            name_kana: String.t() | nil,
            name_kanji: String.t() | nil,
            owners_provided: boolean() | nil,
            ownership_declaration: __MODULE__.OwnershipDeclaration.t() | nil,
            ownership_exemption_reason: String.t() | nil,
            phone: String.t() | nil,
            registration_date: map() | nil,
            registration_number: String.t() | nil,
            representative_declaration: __MODULE__.RepresentativeDeclaration.t() | nil,
            structure: String.t() | nil,
            tax_id: String.t() | nil,
            tax_id_registrar: String.t() | nil,
            vat_id: String.t() | nil,
            verification: __MODULE__.Verification.t() | nil
          }
    defstruct [
      :address,
      :address_kana,
      :address_kanji,
      :directors_provided,
      :directorship_declaration,
      :executives_provided,
      :export_license_id,
      :export_purpose_code,
      :name,
      :name_kana,
      :name_kanji,
      :owners_provided,
      :ownership_declaration,
      :ownership_exemption_reason,
      :phone,
      :registration_date,
      :registration_number,
      :representative_declaration,
      :structure,
      :tax_id,
      :tax_id_registrar,
      :vat_id,
      :verification
    ]
  end

  defmodule Documents do
    @moduledoc "Nested parameters."

    @typedoc """
    * `bank_account_ownership_verification` - One or more documents that support the [Bank account ownership verification](https://support.stripe.com/questions/bank-account-ownership-verification) requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
    * `company_license` - One or more documents that demonstrate proof of a company's license to operate.
    * `company_memorandum_of_association` - One or more documents showing the company's Memorandum of Association.
    * `company_ministerial_decree` - (Certain countries only) One or more documents showing the ministerial decree legalizing the company's establishment.
    * `company_registration_verification` - One or more documents that demonstrate proof of a company's registration with the appropriate local authorities.
    * `company_tax_id_verification` - One or more documents that demonstrate proof of a company's tax ID.
    * `proof_of_address` - One or more documents that demonstrate proof of address.
    * `proof_of_registration` - One or more documents showing the company’s proof of registration with the national business registry.
    * `proof_of_ultimate_beneficial_ownership` - One or more documents that demonstrate proof of ultimate beneficial ownership.
    """
    @type t :: %__MODULE__{
            bank_account_ownership_verification:
              __MODULE__.BankAccountOwnershipVerification.t() | nil,
            company_license: __MODULE__.CompanyLicense.t() | nil,
            company_memorandum_of_association:
              __MODULE__.CompanyMemorandumOfAssociation.t() | nil,
            company_ministerial_decree: __MODULE__.CompanyMinisterialDecree.t() | nil,
            company_registration_verification:
              __MODULE__.CompanyRegistrationVerification.t() | nil,
            company_tax_id_verification: __MODULE__.CompanyTaxIdVerification.t() | nil,
            proof_of_address: __MODULE__.ProofOfAddress.t() | nil,
            proof_of_registration: __MODULE__.ProofOfRegistration.t() | nil,
            proof_of_ultimate_beneficial_ownership:
              __MODULE__.ProofOfUltimateBeneficialOwnership.t() | nil
          }
    defstruct [
      :bank_account_ownership_verification,
      :company_license,
      :company_memorandum_of_association,
      :company_ministerial_decree,
      :company_registration_verification,
      :company_tax_id_verification,
      :proof_of_address,
      :proof_of_registration,
      :proof_of_ultimate_beneficial_ownership
    ]
  end

  defmodule Groups do
    @moduledoc "Nested parameters."

    @typedoc """
    * `payments_pricing` - The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://docs.stripe.com/connect/platform-pricing-tools) for details.
    """
    @type t :: %__MODULE__{
            payments_pricing: map() | nil
          }
    defstruct [:payments_pricing]
  end

  defmodule Individual do
    @moduledoc "Nested parameters."

    @typedoc """
    * `address` - The individual's primary address.
    * `address_kana` - The Kana variation of the individual's primary address (Japan only).
    * `address_kanji` - The Kanji variation of the individual's primary address (Japan only).
    * `dob` - The individual's date of birth.
    * `email` - The individual's email address.
    * `first_name` - The individual's first name. Max length: 100.
    * `first_name_kana` - The Kana variation of the individual's first name (Japan only). Max length: 5000.
    * `first_name_kanji` - The Kanji variation of the individual's first name (Japan only). Max length: 5000.
    * `full_name_aliases` - A list of alternate names or aliases that the individual is known by.
    * `gender` - The individual's gender
    * `id_number` - The government-issued ID number of the individual, as appropriate for the representative's country. (Examples are a Social Security Number in the U.S., or a Social Insurance Number in Canada). Instead of the number itself, you can also provide a [PII token created with Stripe.js](https://stripe.com/js/tokens/create_token?type=pii). Max length: 5000.
    * `id_number_secondary` - The government-issued secondary ID number of the individual, as appropriate for the representative's country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token created with Stripe.js](https://stripe.com/js/tokens/create_token?type=pii). Max length: 5000.
    * `last_name` - The individual's last name. Max length: 100.
    * `last_name_kana` - The Kana variation of the individual's last name (Japan only). Max length: 5000.
    * `last_name_kanji` - The Kanji variation of the individual's last name (Japan only). Max length: 5000.
    * `maiden_name` - The individual's maiden name. Max length: 5000.
    * `metadata` - Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    * `phone` - The individual's phone number.
    * `political_exposure` - Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction. Possible values: `existing`, `none`.
    * `registered_address` - The individual's registered address.
    * `relationship` - Describes the person’s relationship to the account.
    * `ssn_last_4` - The last four digits of the individual's Social Security Number (U.S. only). Max length: 5000.
    * `verification` - The individual's verification document information.
    """
    @type t :: %__MODULE__{
            address: __MODULE__.Address.t() | nil,
            address_kana: __MODULE__.AddressKana.t() | nil,
            address_kanji: __MODULE__.AddressKanji.t() | nil,
            dob: map() | nil,
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
            phone: String.t() | nil,
            political_exposure: String.t() | nil,
            registered_address: __MODULE__.RegisteredAddress.t() | nil,
            relationship: __MODULE__.Relationship.t() | nil,
            ssn_last_4: String.t() | nil,
            verification: __MODULE__.Verification.t() | nil
          }
    defstruct [
      :address,
      :address_kana,
      :address_kanji,
      :dob,
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
      :phone,
      :political_exposure,
      :registered_address,
      :relationship,
      :ssn_last_4,
      :verification
    ]
  end

  defmodule Settings do
    @moduledoc "Nested parameters."

    @typedoc """
    * `bacs_debit_payments` - Settings specific to Bacs Direct Debit payments.
    * `branding` - Settings used to apply the account's branding to email receipts, invoices, Checkout, and other products.
    * `card_issuing` - Settings specific to the account's use of the Card Issuing product.
    * `card_payments` - Settings specific to card charging on the account.
    * `invoices` - Settings specific to the account's use of Invoices.
    * `payments` - Settings that apply across payment methods for charging on the account.
    * `payouts` - Settings specific to the account's payouts.
    * `treasury` - Settings specific to the account's Treasury FinancialAccounts.
    """
    @type t :: %__MODULE__{
            bacs_debit_payments: __MODULE__.BacsDebitPayments.t() | nil,
            branding: __MODULE__.Branding.t() | nil,
            card_issuing: __MODULE__.CardIssuing.t() | nil,
            card_payments: __MODULE__.CardPayments.t() | nil,
            invoices: __MODULE__.Invoices.t() | nil,
            payments: __MODULE__.Payments.t() | nil,
            payouts: __MODULE__.Payouts.t() | nil,
            treasury: __MODULE__.Treasury.t() | nil
          }
    defstruct [
      :bacs_debit_payments,
      :branding,
      :card_issuing,
      :card_payments,
      :invoices,
      :payments,
      :payouts,
      :treasury
    ]
  end

  defmodule TosAcceptance do
    @moduledoc "Nested parameters."

    @typedoc """
    * `date` - The Unix timestamp marking when the account representative accepted their service agreement. Format: Unix timestamp.
    * `ip` - The IP address from which the account representative accepted their service agreement.
    * `service_agreement` - The user's service agreement type. Max length: 5000.
    * `user_agent` - The user agent of the browser from which the account representative accepted their service agreement. Max length: 5000.
    """
    @type t :: %__MODULE__{
            date: integer() | nil,
            ip: String.t() | nil,
            service_agreement: String.t() | nil,
            user_agent: String.t() | nil
          }
    defstruct [:date, :ip, :service_agreement, :user_agent]
  end
end
