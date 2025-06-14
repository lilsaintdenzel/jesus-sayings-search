defmodule JesusSayingsSearchWeb.HomeController do
  use JesusSayingsSearchWeb, :controller

  def index(conn, _params) do
    render(conn, :index, layout: false)
  end

  def healthcheck(conn, _params) do
    database_status = if System.get_env("DATABASE_URL") do
      try do
        JesusSayingsSearch.Repo.query!("SELECT 1")
        "connected"
      rescue
        e -> "error: #{inspect(e)}"
      end
    else
      "not_configured"
    end

    conn
    |> put_status(:ok)
    |> json(%{
      status: "ok", 
      service: "jesus-sayings-search",
      database: database_status,
      timestamp: DateTime.utc_now()
    })
  end
end