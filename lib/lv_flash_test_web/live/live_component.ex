defmodule LvFlashTestWeb.LiveComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
    <h2>key name: flash</h2>
    <p class="alert alert-info" role="alert"><%= live_flash(@flash, "info") %></p>
    <h2>key name: flash2</h2>
    <p class="alert alert-info" role="alert"><%= live_flash(@flash2, "info") %></p>
    """
  end

  def mount(socket) do
    {:ok, socket}
  end
end
