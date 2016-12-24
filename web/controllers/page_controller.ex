defmodule DemoPhoenix.PageController do
  use DemoPhoenix.Web, :controller

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome to Phoenix!")
    |> put_flash(:error, "Fake error")
    |> render("index.html")
  end
end
