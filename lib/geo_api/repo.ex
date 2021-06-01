defmodule GeoApi.Repo do
  use GeoWorld.Repo,
    otp_app: :geo_api,
    adapter: GeoWorld.Adapters.Postgres
end