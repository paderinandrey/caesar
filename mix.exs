defmodule Caesar.Mixfile do
  use Mix.Project

  def project do
    [
      app: :caesar,
      escript: escript_config(),
      version: "0.1.0",
      source_url: "https://github.com/paderinandrey/caesar",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.16.2"},
      {:earmark, ">=0.0.0"}
    ]
  end

  defp escript_config do
    [main_module: Caesar]
  end
end
