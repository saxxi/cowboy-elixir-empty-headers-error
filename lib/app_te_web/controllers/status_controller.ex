defmodule AppTeWeb.StatusController do
  use AppTeWeb, :controller

  @version "0.0.3"

  def index(conn, params) do
    status = %{
      v: @version,
    }
    conn |> send_resp(200, Jason.encode!(status) )
  end

end
