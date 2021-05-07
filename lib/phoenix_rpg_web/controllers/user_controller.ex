defmodule PhoenixRpgWeb.UserController do
  use PhoenixRpgWeb, :controller

  def user(conn, _params) do
    render(conn, "user.html")
  end
end
