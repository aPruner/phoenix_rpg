defmodule PhoenixRpgWeb.UserController do
  use PhoenixRpgWeb, :controller

  def index(conn, %{"name" => name, "age" => age}) do
    conn
    |> put_flash(:info, "Here is a flash message! Maybe this is a toast?")
    |> assign(:name, name)
    |> assign(:age, age)
    |> render("index.html")
  end

  def index(conn, _params) do
    conn
    |> render("index.html")
  end

  def edit(conn, _params) do
    render(conn, "edit.html")
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

end
