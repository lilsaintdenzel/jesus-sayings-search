# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     JesusSayingsSearch.Repo.insert!(%JesusSayingsSearch.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias JesusSayingsSearch.Books.Book
alias JesusSayingsSearch.Sayings.Saying

# Create Gospel books (only if they don't exist)
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

_mark = case Enum.find(books, &(&1.name == "Mark")) do
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

_luke = case Enum.find(books, &(&1.name == "Luke")) do
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

# Sample Jesus sayings from the Gospels
sayings = [
  # Sermon on the Mount - Beatitudes
  %{
    text: "Blessed are the poor in spirit, for theirs is the kingdom of heaven.",
    reference: "5:3",
    chapter: 5,
    verse_start: 3,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain to his disciples and the crowds"
  },
  %{
    text: "Blessed are those who mourn, for they will be comforted.",
    reference: "5:4",
    chapter: 5,
    verse_start: 4,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain to his disciples and the crowds"
  },
  %{
    text: "Blessed are the meek, for they will inherit the earth.",
    reference: "5:5",
    chapter: 5,
    verse_start: 5,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain to his disciples and the crowds"
  },
  
  # The Lord's Prayer
  %{
    text: "Our Father in heaven, hallowed be your name, your kingdom come, your will be done, on earth as it is in heaven.",
    reference: "6:9-10",
    chapter: 6,
    verse_start: 9,
    verse_end: 10,
    book_id: matthew.id,
    category: "Prayer",
    theme: "Lord's Prayer",
    context: "Jesus teaching his disciples how to pray"
  },
  
  # Golden Rule
  %{
    text: "Therefore, whatever you want men to do to you, do also to them, for this is the Law and the Prophets.",
    reference: "7:12",
    chapter: 7,
    verse_start: 12,
    book_id: matthew.id,
    category: "Command",
    theme: "Golden Rule",
    context: "Jesus teaching about how to treat others"
  },
  
  # John 3:16
  %{
    text: "For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.",
    reference: "3:16",
    chapter: 3,
    verse_start: 16,
    book_id: john.id,
    category: "Promise",
    theme: "Salvation",
    context: "Jesus speaking to Nicodemus about being born again"
  },
  
  # I am the way
  %{
    text: "I am the way and the truth and the life. No one comes to the Father except through me.",
    reference: "14:6",
    chapter: 14,
    verse_start: 6,
    book_id: john.id,
    category: "Teaching",
    theme: "Identity of Jesus",
    context: "Jesus comforting his disciples before his crucifixion"
  },
  
  # Great Commission
  %{
    text: "Therefore go and make disciples of all nations, baptizing them in the name of the Father and of the Son and of the Holy Spirit.",
    reference: "28:19",
    chapter: 28,
    verse_start: 19,
    book_id: matthew.id,
    category: "Command",
    theme: "Great Commission",
    context: "Jesus final instructions to his disciples after his resurrection"
  },
  
  # Parable of the Mustard Seed
  %{
    text: "Truly I tell you, if you have faith as small as a mustard seed, you can say to this mountain, 'Move from here to there,' and it will move. Nothing will be impossible for you.",
    reference: "17:20",
    chapter: 17,
    verse_start: 20,
    book_id: matthew.id,
    category: "Parable",
    theme: "Faith",
    context: "Jesus explaining to his disciples about the power of faith"
  },
  
  # Come to me
  %{
    text: "Come to me, all you who are weary and burdened, and I will give you rest.",
    reference: "11:28",
    chapter: 11,
    verse_start: 28,
    book_id: matthew.id,
    category: "Promise",
    theme: "Rest",
    context: "Jesus inviting people to find rest in him"
  }
]

Enum.each(sayings, fn saying_data ->
  Saying
  |> Ash.Changeset.for_create(:create, saying_data)
  |> Ash.create!()
end)

IO.puts("Seeded #{length(sayings)} sayings from Jesus across #{4} Gospel books!")
