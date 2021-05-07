defmodule PhoenixRpgWeb.UserController do
  use PhoenixRpgWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def edit(conn, _params) do
    render(conn, "edit.html")
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

end
