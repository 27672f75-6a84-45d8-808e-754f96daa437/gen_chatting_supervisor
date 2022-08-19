defmodule GenChattingSupervisorTest do
  use ExUnit.Case
  doctest GenChattingSupervisor

  test "greets the world" do
    assert GenChattingSupervisor.hello() == :world
  end
end
