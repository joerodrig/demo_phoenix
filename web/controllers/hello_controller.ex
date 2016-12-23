defmodule DemoPhoenix.HelloController do
  use DemoPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

end
