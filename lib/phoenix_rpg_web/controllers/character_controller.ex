defmodule PhoenixRpgWeb.CharacterController do
  use PhoenixRpgWeb, :controller

  # alias PhoenixRpg.Characters
  # alias PhoenixRpg.Characters.Character

  def index(conn, _params) do
    render(conn, "index.json", %{message: "you're logged in!"})
  end

  # def new(conn, _params) do
  #   changeset = Characters.change_character(%Character{})
  #   render(conn, "new.json", changeset: changeset)
  # end

  # def create(conn, %{"character" => character_params}) do
  #   case Characters.create_character(character_params) do
  #     {:ok, _character} ->
  #       conn
  #       |> put_flash(:info, "Character created successfully.")

  #     {:error, %Ecto.Changeset{} = changeset} ->
  #       render(conn, "new.json", changeset: changeset)
  #   end
  # end

  # def show(conn, %{"id" => id}) do
  #   character = Characters.get_character!(id)
  #   render(conn, "show.json", character: character)
  # end

  # def edit(conn, %{"id" => id}) do
  #   character = Characters.get_character!(id)
  #   changeset = Characters.change_character(character)
  #   render(conn, "edit.json", character: character, changeset: changeset)
  # end

  # def update(conn, %{"id" => id, "character" => character_params}) do
  #   character = Characters.get_character!(id)

  #   case Characters.update_character(character, character_params) do
  #     {:ok, _character} ->
  #       conn
  #       |> put_flash(:info, "Character updated successfully.")

  #     {:error, %Ecto.Changeset{} = changeset} ->
  #       render(conn, "edit.json", character: character, changeset: changeset)
  #   end
  # end

  # def delete(conn, %{"id" => id}) do
  #   character = Characters.get_character!(id)
  #   {:ok, _character} = Characters.delete_character(character)

  #   conn
  #   |> put_flash(:info, "Character deleted successfully.")
  # end
end
