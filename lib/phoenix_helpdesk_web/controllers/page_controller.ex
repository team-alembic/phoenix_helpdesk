defmodule PhoenixHelpdeskWeb.PageController do
  use PhoenixHelpdeskWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
