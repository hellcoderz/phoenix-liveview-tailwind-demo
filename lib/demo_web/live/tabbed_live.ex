defmodule DemoWeb.TabbedLive do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use Phoenix.LiveView
  alias PetalComponents.{Tabs}

  def mount(_params, _query, socket) do
    {:ok, assign(socket, tabs: [{"Tab 1", true}])}
  end

  def render(assigns) do
    ~H"""
    <div class="text-center m-4">
      <button class="text-lg p-2 bg-green-400 rounded" phx-click="new_tab">New Tab</button>
      <Tabs.tabs>
        <%= for {tab_name, is_active} <- @tabs  do%>
          <Tabs.tab underline is_active={is_active} to="/" label={tab_name} />
        <% end %>
      </Tabs.tabs>
    </div>
    """
  end

  def handle_event("new_tab", _value, socket) do
    {:noreply, assign(socket, tabs: [{"Tab", false} | socket.assigns.tabs])}
  end
end
