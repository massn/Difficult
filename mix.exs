defmodule Difficult.Mixfile do
  use Mix.Project

  def project do
    [app: :difficult,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod
   ]
  end
end
