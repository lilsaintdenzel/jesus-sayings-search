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
        # Run the comprehensive seed files
        seed_files = [
          "seeds.exs",  # Basic books and initial sayings
          "final_600_expansion.exs"  # All 550+ canonical sayings
        ]
        
        for seed_file <- seed_files do
          seed_script = Path.join([Application.app_dir(@app), "priv", "repo", seed_file])
          if File.exists?(seed_script) do
            IO.puts("📖 Running #{seed_file}...")
            Code.eval_file(seed_script)
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