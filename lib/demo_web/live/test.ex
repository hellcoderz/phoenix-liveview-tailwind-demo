defmodule DemoWeb.TestLive do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_view
  use Phoenix.LiveView

  def render(assigns) do
    ~H"""
    Current temperature: <%= @temperature %>
    <div class="text-lg bg-green-400">HELLO WORLD</div>
    """
  end

  def mount(_params, _query, socket) do
    {:ok, assign(socket, :temperature, 34)}
  end
end
