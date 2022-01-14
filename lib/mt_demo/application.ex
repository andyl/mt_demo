defmodule MtDemo.Application do

  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    # Run the MuonTrap demo
    MtDemo.main()
    # Then quit
    System.halt(0)
  end
end
