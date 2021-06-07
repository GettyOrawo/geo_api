use Mix.Config

config :geo_api, GeoApi.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "geo-worlds.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],