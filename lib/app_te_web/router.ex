defmodule AppTeWeb.Router do
  use AppTeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AppTeWeb do
    get "/status", StatusController, :index
  end

  scope "/api", AppTeWeb do
    pipe_through :api
  end
end
