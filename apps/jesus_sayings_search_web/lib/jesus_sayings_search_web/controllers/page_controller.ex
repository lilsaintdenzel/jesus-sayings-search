defmodule JesusSayingsSearchWeb.PageController do
  use JesusSayingsSearchWeb, :controller

  def home(conn, _params) do
    redirect(conn, to: ~p"/sayings")
  end
end
