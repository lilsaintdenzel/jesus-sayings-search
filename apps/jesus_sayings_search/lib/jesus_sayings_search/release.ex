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
        # Check current saying count
        current_sayings = JesusSayingsSearch.Sayings.Saying.read!()
        count = length(current_sayings)
        IO.puts("Current database has #{count} sayings.")
        
        cond do
          count == 0 ->
            IO.puts("Database is empty. Running full seeding process...")
            run_complete_seeding()
            
          count < 500 ->
            IO.puts("Database has #{count} sayings but expected 550+. Running complete seeding...")
            # Clear existing sayings using direct SQL to avoid Ash issues
            IO.puts("Clearing existing sayings to avoid duplicates...")
            JesusSayingsSearch.Repo.query!("TRUNCATE TABLE sayings RESTART IDENTITY CASCADE")
            run_complete_seeding()
            
          true ->
            IO.puts("Database has #{count} sayings. Seeding complete.")
        end
        
        # Final count check
        final_count = length(JesusSayingsSearch.Sayings.Saying.read!())
        IO.puts("Final database count: #{final_count} sayings")
      end)
    end
  end

  defp run_complete_seeding do
    # Use massive direct SQL seeding to get all 550+ sayings
    massive_seed_script = Path.join([Application.app_dir(@app), "priv", "repo", "massive_direct_seed.exs"])
    if File.exists?(massive_seed_script) do
      IO.puts("Running massive direct SQL seeding for 550+ sayings...")
      Code.eval_file(massive_seed_script)
    else
      IO.puts("Warning: massive_direct_seed.exs not found! Falling back to direct seed...")
      # Fallback to basic direct seed
      direct_seed_script = Path.join([Application.app_dir(@app), "priv", "repo", "direct_seed.exs"])
      if File.exists?(direct_seed_script) do
        IO.puts("Running direct SQL seeding...")
        Code.eval_file(direct_seed_script)
      end
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
