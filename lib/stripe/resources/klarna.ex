# File generated from our OpenAPI spec
defmodule Stripe.Resources.Klarna do
  @moduledoc """
  Klarna resource.
  """

  @typedoc """
  * `background_image_url`
  * `client_token` - Nullable.
  * `first_name`
  * `last_name`
  * `locale`
  * `logo_url`
  * `page_title`
  * `pay_later_asset_urls_descriptive`
  * `pay_later_asset_urls_standard`
  * `pay_later_name`
  * `pay_later_redirect_url`
  * `pay_now_asset_urls_descriptive`
  * `pay_now_asset_urls_standard`
  * `pay_now_name`
  * `pay_now_redirect_url`
  * `pay_over_time_asset_urls_descriptive`
  * `pay_over_time_asset_urls_standard`
  * `pay_over_time_name`
  * `pay_over_time_redirect_url`
  * `payment_method_categories`
  * `purchase_country`
  * `purchase_type`
  * `redirect_url`
  * `shipping_delay`
  * `shipping_first_name`
  * `shipping_last_name`
  """
  @type t :: %__MODULE__{
          background_image_url: String.t() | nil,
          client_token: String.t() | nil,
          first_name: String.t() | nil,
          last_name: String.t() | nil,
          locale: String.t() | nil,
          logo_url: String.t() | nil,
          page_title: String.t() | nil,
          pay_later_asset_urls_descriptive: String.t() | nil,
          pay_later_asset_urls_standard: String.t() | nil,
          pay_later_name: String.t() | nil,
          pay_later_redirect_url: String.t() | nil,
          pay_now_asset_urls_descriptive: String.t() | nil,
          pay_now_asset_urls_standard: String.t() | nil,
          pay_now_name: String.t() | nil,
          pay_now_redirect_url: String.t() | nil,
          pay_over_time_asset_urls_descriptive: String.t() | nil,
          pay_over_time_asset_urls_standard: String.t() | nil,
          pay_over_time_name: String.t() | nil,
          pay_over_time_redirect_url: String.t() | nil,
          payment_method_categories: String.t() | nil,
          purchase_country: String.t() | nil,
          purchase_type: String.t() | nil,
          redirect_url: String.t() | nil,
          shipping_delay: integer() | nil,
          shipping_first_name: String.t() | nil,
          shipping_last_name: String.t() | nil
        }

  defstruct [
    :background_image_url,
    :client_token,
    :first_name,
    :last_name,
    :locale,
    :logo_url,
    :page_title,
    :pay_later_asset_urls_descriptive,
    :pay_later_asset_urls_standard,
    :pay_later_name,
    :pay_later_redirect_url,
    :pay_now_asset_urls_descriptive,
    :pay_now_asset_urls_standard,
    :pay_now_name,
    :pay_now_redirect_url,
    :pay_over_time_asset_urls_descriptive,
    :pay_over_time_asset_urls_standard,
    :pay_over_time_name,
    :pay_over_time_redirect_url,
    :payment_method_categories,
    :purchase_country,
    :purchase_type,
    :redirect_url,
    :shipping_delay,
    :shipping_first_name,
    :shipping_last_name
  ]

  @object_name "source_type_klarna"
  def object_name, do: @object_name
end
