defmodule PhoenixRpg.CharactersTest do
  use PhoenixRpg.DataCase

  alias PhoenixRpg.Characters

  describe "characters" do
    alias PhoenixRpg.Characters.Character

    @valid_attrs %{agility: 42, chance: 42, class: "some class", fortitude: 42, level: 42, name: "some name", strength: 42, wisdom: 42}
    @update_attrs %{agility: 43, chance: 43, class: "some updated class", fortitude: 43, level: 43, name: "some updated name", strength: 43, wisdom: 43}
    @invalid_attrs %{agility: nil, chance: nil, class: nil, fortitude: nil, level: nil, name: nil, strength: nil, wisdom: nil}

    def character_fixture(attrs \\ %{}) do
      {:ok, character} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Characters.create_character()

      character
    end

    test "list_characters/0 returns all characters" do
      character = character_fixture()
      assert Characters.list_characters() == [character]
    end

    test "get_character!/1 returns the character with given id" do
      character = character_fixture()
      assert Characters.get_character!(character.id) == character
    end

    test "create_character/1 with valid data creates a character" do
      assert {:ok, %Character{} = character} = Characters.create_character(@valid_attrs)
      assert character.agility == 42
      assert character.chance == 42
      assert character.class == "some class"
      assert character.fortitude == 42
      assert character.level == 42
      assert character.name == "some name"
      assert character.strength == 42
      assert character.wisdom == 42
    end

    test "create_character/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Characters.create_character(@invalid_attrs)
    end

    test "update_character/2 with valid data updates the character" do
      character = character_fixture()
      assert {:ok, %Character{} = character} = Characters.update_character(character, @update_attrs)
      assert character.agility == 43
      assert character.chance == 43
      assert character.class == "some updated class"
      assert character.fortitude == 43
      assert character.level == 43
      assert character.name == "some updated name"
      assert character.strength == 43
      assert character.wisdom == 43
    end

    test "update_character/2 with invalid data returns error changeset" do
      character = character_fixture()
      assert {:error, %Ecto.Changeset{}} = Characters.update_character(character, @invalid_attrs)
      assert character == Characters.get_character!(character.id)
    end

    test "delete_character/1 deletes the character" do
      character = character_fixture()
      assert {:ok, %Character{}} = Characters.delete_character(character)
      assert_raise Ecto.NoResultsError, fn -> Characters.get_character!(character.id) end
    end

    test "change_character/1 returns a character changeset" do
      character = character_fixture()
      assert %Ecto.Changeset{} = Characters.change_character(character)
    end
  end
end
