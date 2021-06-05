defmodule GeoApi.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

get "/" do
    {code, message} = respns(conn)
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(code, Poison.encode!(message))
  end

  defp respns(conn) do
    %{"ip_address" => ip_address} = conn.params
    case GeoWorld.get_geolocation_data(ip_address) do
      nil -> 
        {
          400, %{
            status: "NOT FOUND!",
            text: "The IP Address you seek does not exist"
          }
        }
      res -> {200, res}
    end
    
  end
end