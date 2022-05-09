defmodule ShoppingList.Items.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :bought, :boolean, default: false
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :bought])
    |> validate_required([:name, :bought])
  end
end
