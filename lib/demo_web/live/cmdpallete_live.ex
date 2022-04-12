defmodule DemoWeb.CommandPalleteLive do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_view
  use Phoenix.LiveView

  import Phoenix.LiveView.Helpers

  alias DemoWeb.CmdPalleteComponent

  def mount(_params, _query, socket) do
    {:ok, assign(socket, :temperature, 34)}
  end

  def render(assigns) do
    ~H"""
    <div>
      Demo of command pallete
      <.live_component module={CmdPalleteComponent} id="cmdpallete" content="Hello from" />
    </div>
    """
  end
end
