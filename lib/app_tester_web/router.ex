defmodule AppTesterWeb.Router do
  use AppTesterWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AppTesterWeb do
    pipe_through :api

    get "/", StatusController, :index
    get "/status", StatusController, :index
  end

  scope "/api", AppTesterWeb do
    pipe_through :api
  end
end
