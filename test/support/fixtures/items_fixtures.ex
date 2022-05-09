defmodule ShoppingList.ItemsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ShoppingList.Items` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        bought: true,
        name: "some name"
      })
      |> ShoppingList.Items.create_item()

    item
  end
end
