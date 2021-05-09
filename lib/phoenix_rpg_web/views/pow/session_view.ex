defmodule PhoenixRpgWeb.Pow.SessionView do
  use PhoenixRpgWeb, :view

  def render("new.json", %{data: data}) do
    data
  end
end
