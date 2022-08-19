defmodule GenChattingSupervisor.Cluster do
  use GenServer

  def start_link(_init_arg) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  @impl true
  def init(init_arg) do
    node_env = Application.get_env(:gen_chatting_supervisor, :node_env, :dev)
    link_node(node_env)
    {:ok, init_arg}
  end

  defp link_node(:dev) do
    [_host, domain] =
      Node.self()
      |> Atom.to_string()
      |> String.split("@")

    {:ok, node_name_list} = :erl_epmd.names()

    Enum.map(node_name_list, fn {host_name, _number} ->
      Node.connect(:"#{host_name}@#{domain}")
    end)
  end
end
