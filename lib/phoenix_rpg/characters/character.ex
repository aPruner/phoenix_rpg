defmodule PhoenixRpg.Characters.Character do
  use Ecto.Schema
  import Ecto.Changeset

  schema "characters" do
    field :agility, :integer
    field :chance, :integer
    field :class, :string
    field :fortitude, :integer
    field :level, :integer
    field :name, :string
    field :strength, :integer
    field :wisdom, :integer

    timestamps()
  end

  @doc false
  def changeset(character, attrs) do
    character
    |> cast(attrs, [:name, :class, :level, :strength, :agility, :fortitude, :wisdom, :chance])
    |> validate_required([:name, :class, :level, :strength, :agility, :fortitude, :wisdom, :chance])
    |> validate_length(:name, min: 8, max: 16)
    |> validate_inclusion(:class, ["Fighter", "Wizard", "Assassin", "Cleric"])
  end
end
