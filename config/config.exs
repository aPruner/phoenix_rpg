# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_rpg,
  ecto_repos: [PhoenixRpg.Repo]

# Configures the endpoint
config :phoenix_rpg, PhoenixRpgWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5EZsBaf/ULgm6RQNfGDQn5EFMQhHWLy/1ipFcSACoXijOSboyTOjb2/juJF7fn57",
  render_errors: [view: PhoenixRpgWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixRpg.PubSub,
  live_view: [signing_salt: "oR3SQAeX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
