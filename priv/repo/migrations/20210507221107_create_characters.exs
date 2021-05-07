defmodule PhoenixRpg.Repo.Migrations.CreateCharacters do
  use Ecto.Migration

  def change do
    create table(:characters) do
      add :name, :string
      add :class, :string
      add :level, :integer
      add :strength, :integer
      add :agility, :integer
      add :fortitude, :integer
      add :wisdom, :integer
      add :chance, :integer

      timestamps()
    end

  end
end
