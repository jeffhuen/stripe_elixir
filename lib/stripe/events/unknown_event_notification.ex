# File generated from our OpenAPI spec
defmodule Stripe.Events.UnknownEventNotification do
  @moduledoc "Fallback for unrecognized thin event notifications."

  defstruct [:related_object]

  def fetch_related_object(%__MODULE__{related_object: %{"url" => url}}, client) do
    Stripe.Client.request(client, :get, url)
  end
end
