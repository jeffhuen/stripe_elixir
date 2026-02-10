defmodule Stripe.ErrorTest do
  use ExUnit.Case, async: true

  alias Stripe.Error

  describe "from_response/3" do
    test "parses a 401 authentication error" do
      body = JSON.encode!(%{"error" => %{"message" => "Invalid API Key"}})
      error = Error.from_response(401, body, [{"request-id", "req_abc"}])

      assert error.type == :authentication_error
      assert error.message == "Invalid API Key"
      assert error.http_status == 401
      assert error.request_id == "req_abc"
    end

    test "parses a 402 card error" do
      body =
        JSON.encode!(%{
          "error" => %{
            "type" => "card_error",
            "code" => "card_declined",
            "message" => "Your card was declined.",
            "decline_code" => "insufficient_funds",
            "param" => "number"
          }
        })

      error = Error.from_response(402, body, [])

      assert error.type == :card_error
      assert error.code == "card_declined"
      assert error.decline_code == "insufficient_funds"
      assert error.param == "number"
    end

    test "parses a 403 permission error" do
      body = JSON.encode!(%{"error" => %{"message" => "Forbidden"}})
      error = Error.from_response(403, body, [])
      assert error.type == :permission_error
    end

    test "parses a 429 rate limit error with retry-after" do
      body = JSON.encode!(%{"error" => %{"message" => "Too many requests"}})
      error = Error.from_response(429, body, [{"retry-after", "2.5"}])

      assert error.type == :rate_limit_error
      assert error.retry_after == 2.5
    end

    test "parses a 400 invalid request error" do
      body =
        JSON.encode!(%{
          "error" => %{
            "type" => "invalid_request_error",
            "message" => "Missing required param: amount",
            "param" => "amount"
          }
        })

      error = Error.from_response(400, body, [])

      assert error.type == :invalid_request_error
      assert error.param == "amount"
    end

    test "parses an idempotency error" do
      body =
        JSON.encode!(%{
          "error" => %{
            "type" => "idempotency_error",
            "message" => "Keys for idempotent requests can only be used with the same parameters."
          }
        })

      error = Error.from_response(400, body, [])
      assert error.type == :idempotency_error
    end

    test "falls back to api_error for unknown types" do
      body = JSON.encode!(%{"error" => %{"message" => "Something went wrong"}})
      error = Error.from_response(500, body, [])
      assert error.type == :api_error
    end

    test "handles unparseable body gracefully" do
      error = Error.from_response(500, "not json", [])
      assert error.type == :api_error
      assert error.http_body == "not json"
    end
  end

  describe "connection_error/1" do
    test "creates a connection error" do
      error = Error.connection_error("Connection refused")
      assert error.type == :api_connection_error
      assert error.message == "Connection refused"
    end
  end

  describe "signature_verification_error/1" do
    test "creates a signature error" do
      error = Error.signature_verification_error("Bad signature")
      assert error.type == :signature_verification_error
      assert error.message == "Bad signature"
    end
  end

  describe "retryable?/1" do
    test "connection errors are retryable" do
      assert Error.retryable?(Error.connection_error("timeout"))
    end

    test "409 conflict is retryable" do
      assert Error.retryable?(%Error{http_status: 409})
    end

    test "500+ server errors are retryable" do
      assert Error.retryable?(%Error{http_status: 500})
      assert Error.retryable?(%Error{http_status: 503})
    end

    test "429 lock_timeout is retryable" do
      assert Error.retryable?(%Error{http_status: 429, code: "lock_timeout"})
    end

    test "429 without lock_timeout is not retryable" do
      refute Error.retryable?(%Error{http_status: 429, code: "rate_limit"})
    end

    test "400 errors are not retryable" do
      refute Error.retryable?(%Error{http_status: 400})
    end

    test "401 errors are not retryable" do
      refute Error.retryable?(%Error{http_status: 401})
    end
  end
end
