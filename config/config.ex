import Config
config :geo_api,
  ecto_repos: [GeoApi.Repo]

config :geo_api, GeoApi.Repo,
  database: "geo_api",
  username: "postgres",
  password: "postgres",
  hostname: "db"

