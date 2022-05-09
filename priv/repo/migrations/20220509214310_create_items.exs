defmodule ShoppingList.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :bought, :boolean, default: false, null: false

      timestamps()
    end
  end
end
