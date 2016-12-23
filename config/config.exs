# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :demo_phoenix,
  ecto_repos: [DemoPhoenix.Repo]

# Configures the endpoint
config :demo_phoenix, DemoPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "toIy+Nbhg/ySuggAAU84XCaaLKcFBOA2EB3YIc6340Lmbi2rHSZN4eTITMWWSHsU",
  render_errors: [view: DemoPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DemoPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
