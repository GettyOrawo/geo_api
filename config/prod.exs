use Mix.Config

config :geo_api, GeoApi.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "geo-worlds.herokuapp.com/", port: 80]