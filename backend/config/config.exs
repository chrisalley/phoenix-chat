# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_chat,
  ecto_repos: [PhoenixChat.Repo]

# Configures the endpoint
config :phoenix_chat, PhoenixChat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iKziRbycGCluH0Ls4gssVpj6RHAD264SOGFtJUYAg9a+4+EVHgRJhncbcJFjwDQd",
  render_errors: [view: PhoenixChat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :ueberauth, Ueberauth,
  providers: [
    identity: {
      Ueberauth.Strategy.Identity,
      [callback_methods: ["POST"]]
    }
  ]

config :guardian, Guardian,
  issuer: "PhoenixChat",
  ttl: {30, :days},
  secret_key: "0tU+kbCKgUd+gwRDGz6HCPODncyDNzIOMI1SBx8pAbTyB0/beTgtDT8bB+6R2QgF",
  serializer: PhoenixChat.GuardianSerializer,
  permissions: %{default: [:read, :write]}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
