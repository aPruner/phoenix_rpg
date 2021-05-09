defmodule PhoenixRpgWeb.CharacterView do
  use PhoenixRpgWeb, :view

  def render("index.json", %{data: data}) do
    IO.puts data
  end
end
