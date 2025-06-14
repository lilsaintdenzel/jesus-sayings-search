defmodule JesusSayingsSearch.Sayings.Saying do
  use Ash.Resource,
    domain: JesusSayingsSearch.Sayings,
    data_layer: AshPostgres.DataLayer

  require Ash.Query

  postgres do
    table "sayings"
    repo JesusSayingsSearch.Repo
  end

  attributes do
    uuid_primary_key :id

    attribute :text, :string do
      allow_nil? false
      public? true
    end

    attribute :reference, :string do
      allow_nil? false
      public? true
    end

    attribute :chapter, :integer do
      allow_nil? false
      public? true
    end

    attribute :verse_start, :integer do
      allow_nil? false
      public? true
    end

    attribute :verse_end, :integer do
      public? true
    end

    attribute :context, :string do
      public? true
    end

    attribute :category, :string do
      public? true
    end

    attribute :theme, :string do
      public? true
    end

    create_timestamp :inserted_at
    update_timestamp :updated_at
  end

  relationships do
    belongs_to :book, JesusSayingsSearch.Books.Book do
      allow_nil? false
      attribute_writable? true
    end
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      accept [:text, :reference, :chapter, :verse_start, :verse_end, :context, :category, :theme, :book_id]
    end

    update :update do
      accept [:text, :reference, :chapter, :verse_start, :verse_end, :context, :category, :theme, :book_id]
    end

    read :get do
      get? true
      get_by [:id]
    end

    read :search do
      argument :query, :string, allow_nil?: false

      prepare fn query, _context ->
        case Ash.Query.get_argument(query, :query) do
          nil -> query
          search_term ->
            query_param = "%#{String.downcase(search_term)}%"
            Ash.Query.filter(query, expr(ilike(text, ^query_param) or 
                                        ilike(context, ^query_param) or
                                        ilike(category, ^query_param) or
                                        ilike(theme, ^query_param)))
        end
      end
    end

    read :by_book do
      argument :book_id, :uuid, allow_nil?: false

      filter expr(book_id == ^arg(:book_id))
    end

    read :by_chapter do
      argument :book_id, :uuid, allow_nil?: false
      argument :chapter, :integer, allow_nil?: false

      filter expr(book_id == ^arg(:book_id) and chapter == ^arg(:chapter))
    end

    read :by_reference do
      argument :reference, :string, allow_nil?: false

      filter expr(reference == ^arg(:reference))
    end

    read :by_category do
      argument :category, :string, allow_nil?: false

      filter expr(category == ^arg(:category))
    end

    read :by_theme do
      argument :theme, :string, allow_nil?: false

      filter expr(theme == ^arg(:theme))
    end
  end


  code_interface do
    define :create
    define :read
    define :get, args: [:id]
    define :search, args: [:query]
    define :by_book, args: [:book_id]
    define :by_chapter, args: [:book_id, :chapter]
    define :by_reference, args: [:reference]
    define :by_category, args: [:category]
    define :by_theme, args: [:theme]
  end
end