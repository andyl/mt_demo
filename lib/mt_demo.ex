defmodule MtDemo do

  def main do 
    IO.puts("----- START MuonTrap Demo -----")
    MuonTrap.cmd("ping", ~w(-c 5 localhost), into: IO.stream())
    IO.puts("----- END MuonTrap Demo -----")
  end

  def main(_) do
    main()
  end
end
