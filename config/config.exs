# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :reminder_api,
  ecto_repos: [ReminderApi.Repo]

# Configures the endpoint
config :reminder_api, ReminderApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aJLlxgCvbbRPaFmFpYERJfS6MNR6iF815vh9Wb5WKHn07LbDG6aEL4McCL+L3/nk",
  render_errors: [view: ReminderApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ReminderApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
