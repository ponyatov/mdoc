```elixir
defmodule DB.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex,
      version: "0.0.1",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {DB.Application, []}
    ]
  end

  defp deps do
    [
	  {:cowboy, "~> 2.9"}
    ]
  end
end
```
