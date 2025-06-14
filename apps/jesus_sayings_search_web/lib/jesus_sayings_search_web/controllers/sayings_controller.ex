defmodule JesusSayingsSearchWeb.SayingsController do
  use JesusSayingsSearchWeb, :controller

  alias JesusSayingsSearch.Sayings.Saying
  alias JesusSayingsSearch.Books.Book

  def index(conn, params) do
    if database_available?() do
      search_query = params["search"] || ""
      category_filter = params["category"]
      theme_filter = params["theme"]
      book_filter = params["book_id"]

      sayings = cond do
        search_query != "" ->
          Saying.search!(search_query) |> Ash.load!([:book])

        category_filter && category_filter != "" ->
          Saying.by_category!(category_filter) |> Ash.load!([:book])

        theme_filter && theme_filter != "" ->
          Saying.by_theme!(theme_filter) |> Ash.load!([:book])

        book_filter && book_filter != "" ->
          Saying.by_book!(book_filter) |> Ash.load!([:book])

        true ->
          Saying.read!() |> Ash.load!([:book])
      end

      books = Book.read!()
      categories = get_unique_categories()
      themes = get_unique_themes()

      render(conn, :index,
        sayings: sayings,
        books: books,
        categories: categories,
        themes: themes,
        search_query: search_query,
        category_filter: category_filter,
        theme_filter: theme_filter,
        book_filter: book_filter
      )
    else
      # Database not available - show message
      render(conn, :index,
        sayings: [],
        books: [],
        categories: [],
        themes: [],
        search_query: "",
        category_filter: nil,
        theme_filter: nil,
        book_filter: nil,
        database_unavailable: true
      )
    end
  end

  def show(conn, %{"id" => id}) do
    if database_available?() do
      saying = Saying.get!(id) |> Ash.load!([:book])
      render(conn, :show, saying: saying)
    else
      conn
      |> put_flash(:error, "Database not available")
      |> redirect(to: "/")
    end
  end

  defp database_available? do
    System.get_env("DATABASE_URL") != nil
  end

  defp get_unique_categories do
    Saying.read!()
    |> Enum.map(& &1.category)
    |> Enum.filter(& &1)
    |> Enum.uniq()
    |> Enum.sort()
  end

  defp get_unique_themes do
    Saying.read!()
    |> Enum.map(& &1.theme)
    |> Enum.filter(& &1)
    |> Enum.uniq()
    |> Enum.sort()
  end
end