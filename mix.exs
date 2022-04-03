defmodule ExFactor.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_factor,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),
      escript: [main_module: ExFactor.CLI]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:mix_test_watch, "~> 1.0", only: [:dev, :test], runtime: false},
      {:sourceror, "~> 0.10"}
    ]
  end
end
