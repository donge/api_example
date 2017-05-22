defmodule ApiExample.Router do
  use ApiExample.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ApiExample do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api/v1", ApiExample do
    pipe_through :api
    get "/login", UserController, :index
    get "/register", UserController, :index
    get "/register/:id", UserController, :register
    get "/login/:id", UserController, :login
    get "/auth/:id", UserController, :auth
  end
end