defmodule AppTesterWeb.Router do
  use AppTesterWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # If we place `some` as host then:
  # eg.
  # > curl -i localhost:4001/status -H 'Host:some'  # 200 OK
  # > curl -i localhost:4001/status -H 'Host:'      # 400 Bad Request
  #
  # scope "/", AppTesterWeb, host: "some" do
  scope "/", AppTesterWeb, host: "" do # with `host == ""` we always get 404
    pipe_through :api

    get "/", StatusController, :index
    get "/status", StatusController, :index
  end

  scope "/api", AppTesterWeb do
    pipe_through :api
  end
end
