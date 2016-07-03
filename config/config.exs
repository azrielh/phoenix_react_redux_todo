# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_react_redux_todo,
  ecto_repos: [PhoenixReactReduxTodo.Repo]

# Configures the endpoint
config :phoenix_react_redux_todo, PhoenixReactReduxTodo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yp6qtwP5euAddfE2jl0BWPLXc2DL+soiP2Mu0tuTesHCebJdfiqwqJ0sLUy0kIEh",
  render_errors: [view: PhoenixReactReduxTodo.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixReactReduxTodo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
