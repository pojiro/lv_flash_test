defmodule LvFlashTestWeb.LiveView do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <button phx-click="click">click me</button>
    <h1>state: <%= @state %></h1>
    <%= live_component(@socket, LvFlashTestWeb.LiveComponent, flash: @flash, flash2: @flash)%>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, state: nil)}
  end

  def handle_event("click", _params, socket) do
    Process.send_after(self(), "clear_flash", 2000)
    socket = put_flash(socket, "info", "clicked")
    {:noreply, assign(socket, state: "clicked")}
  end

  def handle_event(event, _params, socket) do
    IO.inspect("liveview get event: #{event}")
    {:noreply, socket}
  end

  def handle_info("clear_flash", socket) do
    socket = clear_flash(socket)
    {:noreply, assign(socket, state: "clear_flash received")}
  end
end
