defmodule LvFlashTestWeb.PageController do
  use LvFlashTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
