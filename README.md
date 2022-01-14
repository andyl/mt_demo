# MtDemo

Demo of MuonTrap with Escript and Burrito.

For more info, see https://github.com/fhunleth/muontrap/issues/35

This demo runs one simple command:

    MuonTrap.cmd("ping", ~w(-c 5 localhost), into: IO.stream())

And provides a handful of execution options:

| Execution Method | Status |
|------------------|--------|
| Escript          | Fails  |
| Elixir Script    | Works  |
| iex              | Works  |
| Release          | Works  |
| Burrito          | Works  |

## Building the Burrito Executable

To build the Release and Burrito executable, you will need `Zig`, `gzip` and
`7z`.

The Burrito build is configured to build a linux executable by default. See the
`mix.exs` file to select the appropriate configuration for your platform.

## Execution Options 

First: clone the repo and run `mix deps.get`...

To run as Escript:
- `mix escript.build`
- `./mt_demo`

To run in Iex:
- `iex -S mix`
- `MtDemo.main()`

To run as Elixir Script: 
- `cd script`
- `./demo`

To run as Elixir Release: 
- `MIX_ENV=prod mix release`
- `_build/prod/rel/mt_demo_v1/bin/mt_demo_v1 start`

To run as Burrito Executable: 
- `MIX_ENV=prod mix release`
- `burrito_out/mt_demo_v1_linux`
