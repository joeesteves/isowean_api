defmodule IsoweanApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      IsoweanApi.Repo,
      # Start the Telemetry supervisor
      IsoweanApiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: IsoweanApi.PubSub},
      # Start the Endpoint (http/https)
      IsoweanApiWeb.Endpoint,
      Agriness
      # Start a worker by calling: IsoweanApi.Worker.start_link(arg)
      # {IsoweanApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: IsoweanApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    IsoweanApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
