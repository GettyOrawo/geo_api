defmodule GeoApi.Application do
  def start(_type, _args) do
    children = [
      GeoApi.Endpoint
    ]

    opts = [strategy: :one_for_one, name: GeoApi.Supervisor]

    Supervisor.start_link(children, opts)
  end
end