defmodule Stripe.Application do
  @moduledoc false
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Finch, name: Stripe.Finch}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Stripe.Supervisor)
  end
end
