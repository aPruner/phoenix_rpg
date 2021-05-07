defmodule PhoenixRpgWeb.PageController do
  use PhoenixRpgWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

end
