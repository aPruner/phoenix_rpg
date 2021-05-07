defmodule PhoenixRpg.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_rpg,
    adapter: Ecto.Adapters.Postgres
end
