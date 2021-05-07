defmodule PhoenixRpgWeb.CharacterControllerTest do
  use PhoenixRpgWeb.ConnCase

  alias PhoenixRpg.Characters

  @create_attrs %{agility: 42, chance: 42, class: "some class", fortitude: 42, level: 42, name: "some name", strength: 42, wisdom: 42}
  @update_attrs %{agility: 43, chance: 43, class: "some updated class", fortitude: 43, level: 43, name: "some updated name", strength: 43, wisdom: 43}
  @invalid_attrs %{agility: nil, chance: nil, class: nil, fortitude: nil, level: nil, name: nil, strength: nil, wisdom: nil}

  def fixture(:character) do
    {:ok, character} = Characters.create_character(@create_attrs)
    character
  end

  describe "index" do
    test "lists all characters", %{conn: conn} do
      conn = get(conn, Routes.character_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Characters"
    end
  end

  describe "new character" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.character_path(conn, :new))
      assert html_response(conn, 200) =~ "New Character"
    end
  end

  describe "create character" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.character_path(conn, :create), character: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.character_path(conn, :show, id)

      conn = get(conn, Routes.character_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Character"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.character_path(conn, :create), character: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Character"
    end
  end

  describe "edit character" do
    setup [:create_character]

    test "renders form for editing chosen character", %{conn: conn, character: character} do
      conn = get(conn, Routes.character_path(conn, :edit, character))
      assert html_response(conn, 200) =~ "Edit Character"
    end
  end

  describe "update character" do
    setup [:create_character]

    test "redirects when data is valid", %{conn: conn, character: character} do
      conn = put(conn, Routes.character_path(conn, :update, character), character: @update_attrs)
      assert redirected_to(conn) == Routes.character_path(conn, :show, character)

      conn = get(conn, Routes.character_path(conn, :show, character))
      assert html_response(conn, 200) =~ "some updated class"
    end

    test "renders errors when data is invalid", %{conn: conn, character: character} do
      conn = put(conn, Routes.character_path(conn, :update, character), character: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Character"
    end
  end

  describe "delete character" do
    setup [:create_character]

    test "deletes chosen character", %{conn: conn, character: character} do
      conn = delete(conn, Routes.character_path(conn, :delete, character))
      assert redirected_to(conn) == Routes.character_path(conn, :index)
      assert_error_sent 404, fn ->
        get(conn, Routes.character_path(conn, :show, character))
      end
    end
  end

  defp create_character(_) do
    character = fixture(:character)
    %{character: character}
  end
end
