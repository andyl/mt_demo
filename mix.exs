defmodule MtDemo.MixProject do
  use Mix.Project

  def project do
    [
      app: :mt_demo,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      escript: [main_module: MtDemo], 
      releases: releases(), 
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger], 
      mod: {MtDemo.Application, []}
    ]
  end

  defp deps do
    [
      {:muontrap, "~> 1.0"}, 
      {:burrito, github: "burrito-elixir/burrito"}
    ]
  end

  def releases do
    [
      mt_demo_v1: [
        steps: [:assemble, &Burrito.wrap/1],
        burrito: [
          targets: [
            linux: [os: :linux, cpu: :x86_64],
            # macos: [os: :darwin, cpu: :x86_64],
            # windows: [os: :windows, cpu: :x86_64]
          ],
        ]
      ]
    ]
  end

end
