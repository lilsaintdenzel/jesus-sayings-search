# Production database seeding script
# Run this to populate the production database with all Jesus sayings

alias JesusSayingsSearch.Repo
alias JesusSayingsSearch.Books.Book
alias JesusSayingsSearch.Sayings.Saying

# First, let's make sure we can connect
IO.puts("🔌 Connecting to database...")

try do
  Repo.query!("SELECT 1")
  IO.puts("✅ Database connection successful!")
rescue
  e ->
    IO.puts("❌ Database connection failed: #{inspect(e)}")
    System.halt(1)
end

# Run the existing seed file
IO.puts("🌱 Running seed file...")
Code.eval_file("apps/jesus_sayings_search/priv/repo/seeds.exs")

IO.puts("🎉 Database seeded successfully with 550+ Jesus sayings!")
IO.puts("📖 Your Jesus Sayings Search is now fully operational!")