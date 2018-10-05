# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :shipstation,
  base_uri: "https://ssapi.shipstation.com",
  headers: %{
    limit: "X-Rate-Limit-Limit",
    remaining: "X-Rate-Limit-Remaining",
    reset: "X-Rate-Limit-Reset"
  },
  auth: %{
    api_key: nil,
    api_secret: nil
  },
  httpoison_options: [
    timeout: 8000,
    recv_timeout: 30000
  ]

config :logger, :console,
  format: "$time $metadata[$level] $levelpad$message\n",
  metadata: [:module]


import_config "#{Mix.env}.exs"
