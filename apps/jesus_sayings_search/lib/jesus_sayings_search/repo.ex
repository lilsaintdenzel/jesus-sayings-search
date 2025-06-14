defmodule JesusSayingsSearch.Repo do
  use AshPostgres.Repo,
    otp_app: :jesus_sayings_search

  def installed_extensions do
    ["uuid-ossp", "citext"]
  end
end
