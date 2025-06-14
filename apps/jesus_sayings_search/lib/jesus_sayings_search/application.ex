defmodule JesusSayingsSearch.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      JesusSayingsSearch.Repo,
      {DNSCluster, query: Application.get_env(:jesus_sayings_search, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: JesusSayingsSearch.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: JesusSayingsSearch.Finch}
      # Start a worker by calling: JesusSayingsSearch.Worker.start_link(arg)
      # {JesusSayingsSearch.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: JesusSayingsSearch.Supervisor)
  end
end
