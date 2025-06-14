defmodule JesusSayingsSearch.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    # Run migrations and seeding on startup if DATABASE_URL is available
    if System.get_env("DATABASE_URL") do
      try do
        IO.puts("🔧 Running migrations...")
        JesusSayingsSearch.Release.migrate()
        IO.puts("✅ Migrations completed")
        
        # Check if we need to seed
        case JesusSayingsSearch.Sayings.Saying.read() do
          {:ok, sayings} when length(sayings) < 500 ->
            IO.puts("🌱 Seeding database (currently #{length(sayings)} sayings)...")
            JesusSayingsSearch.Release.seed()
            
            # Check final count
            case JesusSayingsSearch.Sayings.Saying.read() do
              {:ok, final_sayings} ->
                IO.puts("✅ Seeding completed - #{length(final_sayings)} total sayings")
              _ ->
                IO.puts("⚠️ Could not verify final count")
            end
            
          {:ok, sayings} ->
            IO.puts("✅ Database already has #{length(sayings)} sayings - skipping seed")
            
          _ ->
            IO.puts("🌱 Seeding database (could not check existing)...")
            JesusSayingsSearch.Release.seed()
            IO.puts("✅ Seeding completed")
        end
      rescue
        e ->
          IO.puts("❌ Migration/seeding failed: #{inspect(e)}")
      end
    end

    children = [
      {DNSCluster, query: Application.get_env(:jesus_sayings_search, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: JesusSayingsSearch.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: JesusSayingsSearch.Finch}
      # Start a worker by calling: JesusSayingsSearch.Worker.start_link(arg)
      # {JesusSayingsSearch.Worker, arg}
    ]

    # Only start repo if DATABASE_URL is configured
    children = if System.get_env("DATABASE_URL") do
      [JesusSayingsSearch.Repo | children]
    else
      children
    end

    # Use :one_for_one strategy but allow repo to fail without crashing the app
    opts = [
      strategy: :one_for_one, 
      name: JesusSayingsSearch.Supervisor,
      max_restarts: 3,
      max_seconds: 5
    ]
    
    Supervisor.start_link(children, opts)
  end
end
