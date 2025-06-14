defmodule JesusSayingsSearch.Repo.Migrations.CreateSayings do
  use Ecto.Migration

  def change do
    create table(:sayings, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :text, :text, null: false
      add :reference, :string, null: false
      add :chapter, :integer, null: false
      add :verse_start, :integer, null: false
      add :verse_end, :integer
      add :context, :text
      add :category, :string
      add :theme, :string
      add :book_id, references(:books, type: :binary_id, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:sayings, [:book_id])
    create index(:sayings, [:chapter])
    create index(:sayings, [:verse_start])
    create index(:sayings, [:category])
    create index(:sayings, [:theme])
    create index(:sayings, [:reference])
    
    # Add full-text search index
    execute "CREATE INDEX sayings_text_search_idx ON sayings USING GIN(to_tsvector('english', text))",
            "DROP INDEX sayings_text_search_idx"
    
    execute "CREATE INDEX sayings_context_search_idx ON sayings USING GIN(to_tsvector('english', context))",
            "DROP INDEX sayings_context_search_idx"
  end
end