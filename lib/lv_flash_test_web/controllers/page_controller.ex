defmodule LvFlashTestWeb.PageController do
  use LvFlashTestWeb, :controller

  def index(conn, _params) do
    live_render(conn, LvFlashTestWeb.LiveView)
  end
end
