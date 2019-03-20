# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :swanson_quotes,
  ecto_repos: [SwansonQuotes.Repo]

# Configures the endpoint
config :swanson_quotes, SwansonQuotesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3a69ni38LDZh7UNRE9erknFM7eqcK29Z0VyquiliDEy3WOtK067y21PbjfFWZIFB",
  render_errors: [view: SwansonQuotesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SwansonQuotes.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
