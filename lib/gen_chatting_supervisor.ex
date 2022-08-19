defmodule GenChattingSupervisor do
  use GenServer

  def start_link(_init_arg) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def connect() do
    GenServer.call(__MODULE__, {:connect, self()})
  end

  def send(message) do
    GenServer.cast(__MODULE__, {:send, message})
  end

  @impl true
  def init(init_arg) do
    {:ok, init_arg}
  end

  @impl true
  def handle_call({:connect, client_pid}, _from, state) do
    {:reply, client_pid, [client_pid | state]}
  end

  @impl true
  def handle_cast({:send, message}, state) do
    Enum.map(state, fn client_pid -> send(client_pid, {:message, message}) end)
    {:noreply, state}
  end
end
