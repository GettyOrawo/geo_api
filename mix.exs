defmodule GeoApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :geo_api,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {GeoApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      {:geo_world, git: "https://github.com/GettyOrawo/geo_world.git"},
      {:poison, "~> 4.0"},
      {:plug, "~> 1.11"},
      {:cowboy, "~> 2.9"},
      {:plug_cowboy, "~> 2.5"}
    ]
  end
end
