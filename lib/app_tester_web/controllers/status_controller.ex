defmodule AppTesterWeb.StatusController do
  use AppTesterWeb, :controller

  @version "0.0.1"

  def index(conn, params) do
    status = %{
      v: @version,
    }
    conn |> send_resp(200, Poison.encode!(status) )
  end

end
