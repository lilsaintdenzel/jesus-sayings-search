defmodule JesusSayingsSearch.Books do
  use Ash.Domain

  resources do
    resource JesusSayingsSearch.Books.Book
  end
end