defmodule JesusSayingsSearchWeb.Router do
  use JesusSayingsSearchWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {JesusSayingsSearchWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", JesusSayingsSearchWeb do
    pipe_through :browser

    get "/", HomeController, :index
    get "/search", SayingsController, :index
    get "/sayings", SayingsController, :index
    get "/sayings/:id", SayingsController, :show
    get "/healthcheck", HomeController, :healthcheck
  end

  # Other scopes may use custom stacks.
  # scope "/api", JesusSayingsSearchWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:jesus_sayings_search_web, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: JesusSayingsSearchWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
