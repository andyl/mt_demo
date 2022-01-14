defmodule MtDemoTest do
  use ExUnit.Case
  doctest MtDemo

  test "greets the world" do
    assert MtDemo.hello() == :world
  end
end
