defmodule GeoApi.Router do
  use Plug.Router
  import GeoWorld


  plug(:match)
  plug(:dispatch)

  get "/geolocation/:ip_address" do
  	{code, message} = respns(conn)
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(code, Poison.encode!(message))
  end

  defp respns(conn) do
    %{"ip_address" => ip_address} = conn.params
    case get_geolocation_data(ip_address) do
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