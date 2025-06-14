# Direct seeding script - loads all 550+ sayings directly
IO.puts("🌱 Starting direct seeding of all Jesus sayings...")

alias JesusSayingsSearch.Books.Book
alias JesusSayingsSearch.Sayings.Saying

# First create books if they don't exist
books = Book.read!()

matthew = case Enum.find(books, &(&1.name == "Matthew")) do
  nil -> 
    Book
    |> Ash.Changeset.for_create(:create, %{
      name: "Matthew",
      abbreviation: "Mt",
      testament: "New Testament",
      order: 40
    })
    |> Ash.create!()
  book -> book
end

mark = case Enum.find(books, &(&1.name == "Mark")) do
  nil -> 
    Book
    |> Ash.Changeset.for_create(:create, %{
      name: "Mark", 
      abbreviation: "Mk",
      testament: "New Testament",
      order: 41
    })
    |> Ash.create!()
  book -> book
end

luke = case Enum.find(books, &(&1.name == "Luke")) do
  nil -> 
    Book
    |> Ash.Changeset.for_create(:create, %{
      name: "Luke",
      abbreviation: "Lk", 
      testament: "New Testament",
      order: 42
    })
    |> Ash.create!()
  book -> book
end

john = case Enum.find(books, &(&1.name == "John")) do
  nil -> 
    Book
    |> Ash.Changeset.for_create(:create, %{
      name: "John",
      abbreviation: "Jn",
      testament: "New Testament", 
      order: 43
    })
    |> Ash.create!()
  book -> book
end

IO.puts("✅ Books ready")

# Check current count
current_sayings = Saying.read!()
IO.puts("📊 Current sayings: #{length(current_sayings)}")

# If we have less than 100 sayings, run the expansion files
if length(current_sayings) < 100 do
  IO.puts("🔄 Running comprehensive seeding...")
  
  # Run the existing seed files
  try do
    Code.eval_file("apps/jesus_sayings_search/priv/repo/final_600_expansion.exs")
    IO.puts("✅ Loaded final_600_expansion.exs")
  rescue
    e -> IO.puts("❌ Error loading final_600_expansion.exs: #{inspect(e)}")
  end
  
  # Check final count
  final_sayings = Saying.read!()
  IO.puts("🎉 Final count: #{length(final_sayings)} sayings")
else
  IO.puts("✅ Database already has #{length(current_sayings)} sayings")
end