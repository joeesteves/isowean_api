defmodule IsoweanApiWeb.PageController do
  use IsoweanApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
