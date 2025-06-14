defmodule JesusSayingsSearchWeb.HomeController do
  use JesusSayingsSearchWeb, :controller

  def index(conn, _params) do
    render(conn, :index, layout: false)
  end

  def healthcheck(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{status: "ok", service: "jesus-sayings-search"})
  end
end