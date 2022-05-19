defmodule AppUsingLiveTagWeb.LiveViewPrac do
  use Phoenix.LiveView
  # def render(assigns) do
  #   ~H"""
  #   <section class="row">
  #     <h4>
  #       Counter <%= @count%>
  #     </h4>
  #     <button
  #       style="width: 25;"
  #       phx-click="for_increment"
  #     >
  #       +
  #     </button>
  #   </section>
  #   """
  # end
  def mount(_params, _session, socket) do
    {:ok,
    socket
    |> assign(count: 0)
  }
  end
  def handle_event("for_increment", _params, socket) do
    {:noreply, socket
    |> update(:count, &min(100, &1+10))}
  end
  def handle_event("for_decrement", _params, socket) do
    {:noreply, socket
    |> update(:count, &max(0, &1-10))}
  end
  def handle_event("for_clear", _params, socket) do
    {:noreply, socket
    |> assign(count: 0)}
  end
end
