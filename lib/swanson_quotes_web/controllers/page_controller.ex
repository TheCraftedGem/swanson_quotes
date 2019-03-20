defmodule SwansonQuotesWeb.PageController do
  use SwansonQuotesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
