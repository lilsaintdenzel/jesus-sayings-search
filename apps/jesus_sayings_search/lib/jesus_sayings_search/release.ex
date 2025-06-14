defmodule JesusSayingsSearch.Release do
  @moduledoc """
  Used for executing DB release tasks when run in production without Mix
  installed.
  """
  @app :jesus_sayings_search

  def migrate do
    load_app()

    for repo <- repos() do
      {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :up, all: true))
    end
  end

  def seed do
    load_app()

    for repo <- repos() do
      {:ok, _, _} = Ecto.Migrator.with_repo(repo, fn _repo ->
        # Check if database is already seeded
        case JesusSayingsSearch.Sayings.Saying.read!() do
          [] ->
            IO.puts("Database is empty. Running full seeding process...")
            
            # Run the basic seeds first (creates books)
            seed_script = Path.join([Application.app_dir(@app), "priv", "repo", "seeds.exs"])
            if File.exists?(seed_script) do
              IO.puts("Running basic seeds...")
              Code.eval_file(seed_script)
            end
            
            # Then run the comprehensive expansion
            final_seed_script = Path.join([Application.app_dir(@app), "priv", "repo", "final_600_expansion.exs"])
            if File.exists?(final_seed_script) do
              IO.puts("Running final 600 expansion...")
              Code.eval_file(final_seed_script)
            else
              IO.puts("Warning: final_600_expansion.exs not found!")
            end
            
          sayings ->
            count = length(sayings)
            IO.puts("Database already has #{count} sayings. Skipping seeding.")
            
            if count < 500 do
              IO.puts("Warning: Expected 550+ sayings but found #{count}. Consider re-seeding.")
              
              # Try to run the comprehensive expansion if we have less than expected
              final_seed_script = Path.join([Application.app_dir(@app), "priv", "repo", "final_600_expansion.exs"])
              if File.exists?(final_seed_script) do
                IO.puts("Running final 600 expansion to complete dataset...")
                Code.eval_file(final_seed_script)
              end
            end
        end
      end)
    end
  end

  def rollback(repo, version) do
    load_app()
    {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :down, to: version))
  end

  defp repos do
    Application.fetch_env!(@app, :ecto_repos)
  end

  defp load_app do
    Application.load(@app)
  end
end
