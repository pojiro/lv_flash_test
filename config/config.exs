# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :lv_flash_test, LvFlashTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rztDtOI5u5RT7RpOWCw5Kmu0Qt634b6QBPMuuIH3/HzULE2edeXF+eximqKvbsSC",
  render_errors: [view: LvFlashTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LvFlashTest.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "spIL/v4j"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
