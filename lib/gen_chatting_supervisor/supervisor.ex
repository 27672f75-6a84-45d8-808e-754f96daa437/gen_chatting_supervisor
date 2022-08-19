defmodule GenChattingSupervisor.Supervisor do
  use Supervisor

  def start_link(_init_arg) do
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end

  @impl true
  def init(_init_arg) do
    cildren = [
      GenChattingSupervisor
    ]

    Supervisor.init(cildren, strategy: :one_for_one)
  end
end
