defmodule JesusSayingsSearch.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false
      add :abbreviation, :string, null: false
      add :testament, :string, null: false
      add :order, :integer, null: false

      timestamps()
    end

    create unique_index(:books, [:name])
    create unique_index(:books, [:abbreviation])
    create index(:books, [:testament])
    create index(:books, [:order])
  end
end