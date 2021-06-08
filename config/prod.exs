use Mix.Config

config :geo_api, GeoApi.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "geo-worlds.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :geo_api, GeoWorld.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true
  