# Direct SQL seeding to avoid Ash schema issues
# This bypasses Ash and uses direct SQL for reliable seeding

alias JesusSayingsSearch.Books.Book
alias JesusSayingsSearch.Repo
import Ecto.Query

# Get books (create if needed)
books = Book.read!()

matthew_id = case Enum.find(books, &(&1.name == "Matthew")) do
  nil -> 
    book = Book
    |> Ash.Changeset.for_create(:create, %{
      name: "Matthew",
      abbreviation: "Mt", 
      testament: "New Testament",
      order: 40
    })
    |> Ash.create!()
    book.id
  book -> book.id
end

mark_id = case Enum.find(books, &(&1.name == "Mark")) do
  nil ->
    book = Book
    |> Ash.Changeset.for_create(:create, %{
      name: "Mark",
      abbreviation: "Mk",
      testament: "New Testament", 
      order: 41
    })
    |> Ash.create!()
    book.id
  book -> book.id
end

luke_id = case Enum.find(books, &(&1.name == "Luke")) do
  nil ->
    book = Book
    |> Ash.Changeset.for_create(:create, %{
      name: "Luke",
      abbreviation: "Lk",
      testament: "New Testament",
      order: 42
    })
    |> Ash.create!()
    book.id
  book -> book.id
end

john_id = case Enum.find(books, &(&1.name == "John")) do
  nil ->
    book = Book
    |> Ash.Changeset.for_create(:create, %{
      name: "John",
      abbreviation: "Jn",
      testament: "New Testament",
      order: 43
    })
    |> Ash.create!()
    book.id
  book -> book.id
end

IO.puts("Books created/found. Starting direct SQL seeding...")

# Generate UUID function
defmodule UUIDHelper do
  def generate, do: Ecto.UUID.generate()
end

# Sample of the most important sayings - we'll expand this
core_sayings = [
  # Beatitudes
  %{text: "Blessed are the poor in spirit, for theirs is the kingdom of heaven.", reference: "5:3", chapter: 5, verse_start: 3, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are those who mourn, for they will be comforted.", reference: "5:4", chapter: 5, verse_start: 4, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are the meek, for they will inherit the earth.", reference: "5:5", chapter: 5, verse_start: 5, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are those who hunger and thirst for righteousness, for they will be filled.", reference: "5:6", chapter: 5, verse_start: 6, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are the merciful, for they will be shown mercy.", reference: "5:7", chapter: 5, verse_start: 7, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are the pure in heart, for they will see God.", reference: "5:8", chapter: 5, verse_start: 8, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are the peacemakers, for they will be called children of God.", reference: "5:9", chapter: 5, verse_start: 9, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are those who are persecuted because of righteousness, for theirs is the kingdom of heaven.", reference: "5:10", chapter: 5, verse_start: 10, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  
  # Lord's Prayer  
  %{text: "Our Father in heaven, hallowed be your name, your kingdom come, your will be done, on earth as it is in heaven.", reference: "6:9-10", chapter: 6, verse_start: 9, verse_end: 10, book_id: matthew_id, category: "Prayer", theme: "Lord's Prayer", context: "Teaching on prayer"},
  %{text: "Give us today our daily bread.", reference: "6:11", chapter: 6, verse_start: 11, book_id: matthew_id, category: "Prayer", theme: "Lord's Prayer", context: "Teaching on prayer"},
  %{text: "And forgive us our debts, as we also have forgiven our debtors.", reference: "6:12", chapter: 6, verse_start: 12, book_id: matthew_id, category: "Prayer", theme: "Lord's Prayer", context: "Teaching on prayer"},
  %{text: "And lead us not into temptation, but deliver us from the evil one.", reference: "6:13", chapter: 6, verse_start: 13, book_id: matthew_id, category: "Prayer", theme: "Lord's Prayer", context: "Teaching on prayer"},
  
  # Golden Rule and key teachings
  %{text: "Therefore, whatever you want men to do to you, do also to them, for this is the Law and the Prophets.", reference: "7:12", chapter: 7, verse_start: 12, book_id: matthew_id, category: "Command", theme: "Golden Rule", context: "Sermon on the Mount"},
  %{text: "You are the salt of the earth. But if the salt loses its saltiness, how can it be made salty again?", reference: "5:13", chapter: 5, verse_start: 13, book_id: matthew_id, category: "Teaching", theme: "Identity", context: "Sermon on the Mount"},
  %{text: "You are the light of the world. A town built on a hill cannot be hidden.", reference: "5:14", chapter: 5, verse_start: 14, book_id: matthew_id, category: "Teaching", theme: "Identity", context: "Sermon on the Mount"},
  
  # John's Gospel key sayings
  %{text: "For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.", reference: "3:16", chapter: 3, verse_start: 16, book_id: john_id, category: "Promise", theme: "Salvation", context: "Conversation with Nicodemus"},
  %{text: "I am the way and the truth and the life. No one comes to the Father except through me.", reference: "14:6", chapter: 14, verse_start: 6, book_id: john_id, category: "Teaching", theme: "Identity", context: "Farewell discourse"},
  %{text: "I am the bread of life. Whoever comes to me will never go hungry, and whoever believes in me will never be thirsty.", reference: "6:35", chapter: 6, verse_start: 35, book_id: john_id, category: "Teaching", theme: "Identity", context: "Bread of life discourse"},
  %{text: "I am the light of the world. Whoever follows me will never walk in darkness, but will have the light of life.", reference: "8:12", chapter: 8, verse_start: 12, book_id: john_id, category: "Teaching", theme: "Identity", context: "Teaching in temple"},
  %{text: "I am the good shepherd. The good shepherd lays down his life for the sheep.", reference: "10:11", chapter: 10, verse_start: 11, book_id: john_id, category: "Teaching", theme: "Identity", context: "Good shepherd discourse"},
  %{text: "I am the resurrection and the life. The one who believes in me will live, even though they die.", reference: "11:25", chapter: 11, verse_start: 25, book_id: john_id, category: "Teaching", theme: "Identity", context: "Raising of Lazarus"},
  %{text: "I am the vine; you are the branches. If you remain in me and I in you, you will bear much fruit; apart from me you can do nothing.", reference: "15:5", chapter: 15, verse_start: 5, book_id: john_id, category: "Teaching", theme: "Identity", context: "Vine and branches discourse"},
  
  # Great Commission and key commands
  %{text: "Therefore go and make disciples of all nations, baptizing them in the name of the Father and of the Son and of the Holy Spirit.", reference: "28:19", chapter: 28, verse_start: 19, book_id: matthew_id, category: "Command", theme: "Great Commission", context: "Post-resurrection appearance"},
  %{text: "Come to me, all you who are weary and burdened, and I will give you rest.", reference: "11:28", chapter: 11, verse_start: 28, book_id: matthew_id, category: "Promise", theme: "Rest", context: "Invitation to discipleship"},
  %{text: "Love the Lord your God with all your heart and with all your soul and with all your mind.", reference: "22:37", chapter: 22, verse_start: 37, book_id: matthew_id, category: "Command", theme: "Greatest Commandment", context: "Testing by Pharisees"},
  %{text: "Love your neighbor as yourself.", reference: "22:39", chapter: 22, verse_start: 39, book_id: matthew_id, category: "Command", theme: "Greatest Commandment", context: "Testing by Pharisees"},
  
  # Parables
  %{text: "The kingdom of heaven is like a mustard seed, which a man took and planted in his field.", reference: "13:31", chapter: 13, verse_start: 31, book_id: matthew_id, category: "Parable", theme: "Kingdom of Heaven", context: "Parable teaching"},
  %{text: "Truly I tell you, if you have faith as small as a mustard seed, you can say to this mountain, 'Move from here to there,' and it will move.", reference: "17:20", chapter: 17, verse_start: 20, book_id: matthew_id, category: "Teaching", theme: "Faith", context: "Teaching on faith"},
  
  # Key statements
  %{text: "But seek first his kingdom and his righteousness, and all these things will be given to you as well.", reference: "6:33", chapter: 6, verse_start: 33, book_id: matthew_id, category: "Command", theme: "Priorities", context: "Teaching on worry"},
  %{text: "Ask and it will be given to you; seek and you will find; knock and the door will be opened to you.", reference: "7:7", chapter: 7, verse_start: 7, book_id: matthew_id, category: "Promise", theme: "Prayer", context: "Teaching on prayer"},
  %{text: "Peace I leave with you; my peace I give you. I do not give to you as the world gives.", reference: "14:27", chapter: 14, verse_start: 27, book_id: john_id, category: "Promise", theme: "Peace", context: "Farewell discourse"},
  %{text: "In this world you will have trouble. But take heart! I have overcome the world.", reference: "16:33", chapter: 16, verse_start: 33, book_id: john_id, category: "Promise", theme: "Victory", context: "Farewell discourse"}
]

# Insert using direct SQL to avoid Ash schema issues
now = DateTime.utc_now() |> DateTime.truncate(:second)

Enum.each(core_sayings, fn saying ->
  id = UUIDHelper.generate()
  verse_end = Map.get(saying, :verse_end)
  
  Repo.query!("""
    INSERT INTO sayings (id, text, reference, chapter, verse_start, verse_end, context, category, theme, book_id, inserted_at, updated_at)
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)
  """, [
    id,
    saying.text,
    saying.reference, 
    saying.chapter,
    saying.verse_start,
    verse_end,
    saying.context,
    saying.category,
    saying.theme,
    saying.book_id,
    now,
    now
  ])
end)

IO.puts("Successfully seeded #{length(core_sayings)} core sayings!")