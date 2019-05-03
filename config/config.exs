# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :grebenshikoff,
  ecto_repos: [Grebenshikoff.Repo]

# Configures the endpoint
config :grebenshikoff, GrebenshikoffWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K1fgE1bQNO2Dol6wdDFySGf7VPG6Rv3gMojjA5KCGk4KFrazqyHXHoCKGICFW3t+",
  render_errors: [view: GrebenshikoffWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Grebenshikoff.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
