defmodule Stripe.Error do
  @moduledoc """
  Stripe API error.

  All API errors are returned as `{:error, %Stripe.Error{}}` tuples.

  ## Error Types

    * `:api_error` - Generic API error
    * `:authentication_error` - Invalid API key (401)
    * `:card_error` - Card was declined
    * `:idempotency_error` - Idempotency key conflict
    * `:invalid_request_error` - Invalid parameters (400/404)
    * `:permission_error` - Insufficient permissions (403)
    * `:rate_limit_error` - Too many requests (429)
    * `:api_connection_error` - Network/connection failure
    * `:signature_verification_error` - Webhook signature mismatch
  """

  @type error_type ::
          :api_error
          | :authentication_error
          | :card_error
          | :idempotency_error
          | :invalid_request_error
          | :permission_error
          | :rate_limit_error
          | :api_connection_error
          | :signature_verification_error

  @type t :: %__MODULE__{
          type: error_type(),
          message: String.t() | nil,
          code: String.t() | nil,
          param: String.t() | nil,
          http_status: integer() | nil,
          http_body: String.t() | nil,
          http_headers: [{String.t(), String.t()}] | nil,
          request_id: String.t() | nil,
          decline_code: String.t() | nil,
          charge: String.t() | nil,
          payment_intent: map() | nil,
          payment_method: map() | nil,
          setup_intent: map() | nil,
          doc_url: String.t() | nil,
          retry_after: number() | nil
        }

  defstruct [
    :type,
    :message,
    :code,
    :param,
    :http_status,
    :http_body,
    :http_headers,
    :request_id,
    :decline_code,
    :charge,
    :payment_intent,
    :payment_method,
    :setup_intent,
    :doc_url,
    :retry_after
  ]

  @doc "Build an error from an HTTP response."
  @spec from_response(integer(), String.t(), [{String.t(), String.t()}]) :: t()
  def from_response(status, body, headers) do
    request_id = get_header(headers, "request-id")
    retry_after = get_header(headers, "retry-after")

    error_data =
      case JSON.decode(body) do
        {:ok, %{"error" => error}} -> error
        _ -> %{}
      end

    %__MODULE__{
      type: error_type_from_response(status, error_data),
      message: error_data["message"],
      code: error_data["code"],
      param: error_data["param"],
      http_status: status,
      http_body: body,
      http_headers: headers,
      request_id: request_id,
      decline_code: error_data["decline_code"],
      charge: error_data["charge"],
      payment_intent: error_data["payment_intent"],
      payment_method: error_data["payment_method"],
      setup_intent: error_data["setup_intent"],
      doc_url: error_data["doc_url"],
      retry_after: parse_retry_after(retry_after)
    }
  end

  @doc "Build a network/connection error."
  @spec connection_error(String.t()) :: t()
  def connection_error(message) do
    %__MODULE__{type: :api_connection_error, message: message}
  end

  @doc "Build a webhook signature verification error."
  @spec signature_verification_error(String.t()) :: t()
  def signature_verification_error(message) do
    %__MODULE__{type: :signature_verification_error, message: message}
  end

  @doc "Returns true if this error is retryable."
  @spec retryable?(t()) :: boolean()
  def retryable?(%__MODULE__{type: :api_connection_error}), do: true
  def retryable?(%__MODULE__{http_status: 409}), do: true
  def retryable?(%__MODULE__{http_status: status}) when status >= 500, do: true
  def retryable?(%__MODULE__{http_status: 429, code: "lock_timeout"}), do: true
  def retryable?(_), do: false

  # Map HTTP status + error body to our error type.
  # Matches Ruby SDK: 401 → auth, 402 → card, 403 → permission, 429 → rate limit.
  defp error_type_from_response(401, _data), do: :authentication_error
  defp error_type_from_response(403, _data), do: :permission_error
  defp error_type_from_response(429, _data), do: :rate_limit_error

  defp error_type_from_response(_status, %{"type" => "card_error"}), do: :card_error
  defp error_type_from_response(_status, %{"type" => "idempotency_error"}), do: :idempotency_error

  defp error_type_from_response(_status, %{"type" => "invalid_request_error"}),
    do: :invalid_request_error

  defp error_type_from_response(_status, _data), do: :api_error

  defp get_header(headers, name) do
    case List.keyfind(headers, name, 0) do
      {_, value} -> value
      nil -> nil
    end
  end

  defp parse_retry_after(nil), do: nil

  defp parse_retry_after(value) do
    case Float.parse(value) do
      {seconds, _} -> seconds
      :error -> nil
    end
  end
end
