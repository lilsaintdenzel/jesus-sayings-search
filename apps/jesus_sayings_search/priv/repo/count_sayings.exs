alias JesusSayingsSearch.Sayings.Saying

sayings = Saying.read!()
IO.puts("Total sayings in database: #{length(sayings)}")

# Show categories and themes
categories = sayings |> Enum.map(& &1.category) |> Enum.filter(& &1) |> Enum.uniq() |> Enum.sort()
themes = sayings |> Enum.map(& &1.theme) |> Enum.filter(& &1) |> Enum.uniq() |> Enum.sort()

IO.puts("Categories: #{Enum.join(categories, ", ")}")
IO.puts("Themes: #{Enum.join(themes, ", ")}")

# Show distribution by book
books_dist = sayings 
|> Enum.group_by(& &1.book_id)
|> Enum.map(fn {book_id, book_sayings} -> 
  book = JesusSayingsSearch.Books.Book.get!(book_id)
  {book.name, length(book_sayings)}
end)
|> Enum.sort_by(fn {_, count} -> count end, :desc)

IO.puts("\nDistribution by Gospel:")
Enum.each(books_dist, fn {book_name, count} ->
  IO.puts("  #{book_name}: #{count} sayings")
end)