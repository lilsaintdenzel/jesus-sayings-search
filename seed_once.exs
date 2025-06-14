# One-time seeding script - only runs if database is empty
IO.puts("🌱 Checking if database needs seeding...")

try do
  # Check if we already have sayings
  case JesusSayingsSearch.Sayings.Saying.read() do
    {:ok, []} ->
      IO.puts("📖 Database is empty, seeding with 550+ Jesus sayings...")
      
      # Run the seed script
      JesusSayingsSearch.Release.seed()
      
      IO.puts("🎉 Successfully seeded database with 550+ canonical Gospel sayings!")
      IO.puts("📚 Your Jesus Sayings Search is now fully operational!")
      
    {:ok, sayings} when length(sayings) > 0 ->
      IO.puts("✅ Database already has #{length(sayings)} sayings - skipping seed")
      
    {:error, reason} ->
      IO.puts("❌ Could not check database: #{inspect(reason)}")
  end
rescue
  e ->
    IO.puts("❌ Seeding failed: #{inspect(e)}")
end

IO.puts("🚀 Starting application...")