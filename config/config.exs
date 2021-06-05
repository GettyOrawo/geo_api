import Config
config :geo_world, GeoWorld.Repo,
  database: "geo_api",
  username: "postgres",
  password: "postgres",
  hostname: "db",
  show_sensitive_data_on_connection_error: true

 config :geo_api, ecto_repos: [GeoWorld.Repo]