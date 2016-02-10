defmodule Difficult.Mixfile do
  use Mix.Project

  def project do
    [app: :difficult,
     version: "0.0.2",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "Difficult, but computable functions",
     package: [
       maintainers: ["Massn"],
       licenses: ["MIT"],
       links: %{"GitHub" => "https://github.com/massn/Difficult"}
     ],
     deps: [
       {:ex_doc, "~> 0.11.4"},
       {:earmark, ">= 0.0.0"}
     ]
   ]
  end
end
