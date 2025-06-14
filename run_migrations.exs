# Simple migration runner for production
IO.puts("🏃 Running database migrations...")

try do
  # Load the app
  Application.load(:jesus_sayings_search)
  
  # Get the repo
  repo = JesusSayingsSearch.Repo
  
  # Start the repo
  {:ok, _} = repo.start_link()
  
  # Run migrations
  migrations_path = Application.app_dir(:jesus_sayings_search, "priv/repo/migrations")
  Ecto.Migrator.run(repo, migrations_path, :up, all: true)
  
  IO.puts("✅ Migrations completed successfully!")
rescue
  e -> 
    IO.puts("❌ Migration failed: #{inspect(e)}")
    System.halt(1)
end