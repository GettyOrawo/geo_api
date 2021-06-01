defmodule GeoApi.Endpoint do
  use Plug.Router

  plug(:match)
  plug(Plug.Parsers,
  	parsers: [:json],
  	pass: "application/json",
  	json_decoder: Poison
  )
  Plug.Dispatch

  forward("/geolocation", to: GeoApi.Router)

  match _ do
  	send_resp(conn, 404, "We did not find the page you requested!")
  end

  def child_spec(opts) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]}
    }
  end

  def start_link(_opts),
    do: Plug.Adapters.Cowboy2.http(__MODULE__, [])
end