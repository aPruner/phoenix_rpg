defmodule PhoenixRpgWeb.UserView do
  use PhoenixRpgWeb, :view

  def render("index.json", %{data: data}) do
    data
  end
end
