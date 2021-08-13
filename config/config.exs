# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :isowean_api,
  ecto_repos: [IsoweanApi.Repo]

# Configures the endpoint
config :isowean_api, IsoweanApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TTnTWmG4g/967/ibAeG2yuH1ey84MJlDqSUifaZPKvBl5ztiHhpqnVvOyUkNmYWU",
  render_errors: [view: IsoweanApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: IsoweanApi.PubSub,
  live_view: [signing_salt: "qPi+aZaj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :teamplace,
  credentials: %{
    client_id: System.get_env("TEAMPLACE_CLIENT_ID"),
    client_secret: System.get_env("TEAMPLACE_CLIENT_SECRET")
  }

config :teamplace,
  api_base: System.get_env("TEAMPLACE_API_BASE")

config :teamplace,
  bcra_token: System.get_env("TEAMPLACE_BCRA_TOKEN")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
