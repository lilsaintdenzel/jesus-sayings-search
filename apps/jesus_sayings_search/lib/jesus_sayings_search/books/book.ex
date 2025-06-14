defmodule JesusSayingsSearch.Books.Book do
  use Ash.Resource,
    domain: JesusSayingsSearch.Books,
    data_layer: AshPostgres.DataLayer

  postgres do
    table "books"
    repo JesusSayingsSearch.Repo
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string do
      allow_nil? false
      public? true
    end

    attribute :abbreviation, :string do
      allow_nil? false
      public? true
    end

    attribute :testament, :string do
      allow_nil? false
      public? true
    end

    attribute :order, :integer do
      allow_nil? false
      public? true
    end

    create_timestamp :inserted_at
    update_timestamp :updated_at
  end

  relationships do
    has_many :sayings, JesusSayingsSearch.Sayings.Saying do
      destination_attribute :book_id
    end
  end

  actions do
    defaults [:read, :update, :destroy]

    create :create do
      accept [:name, :abbreviation, :testament, :order]
    end

    read :get do
      get? true
      get_by [:id]
    end

    read :by_testament do
      argument :testament, :string, allow_nil?: false

      filter expr(testament == ^arg(:testament))
    end
  end

  identities do
    identity :unique_name, [:name]
    identity :unique_abbreviation, [:abbreviation]
  end

  code_interface do
    define :create
    define :read
    define :get, args: [:id]
    define :by_testament, args: [:testament]
  end
end