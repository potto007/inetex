defmodule Inetex.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :inetex,
     name: "Inetex",
     version: @version,
     elixir: "~> 1.2",
     docs: [extras: ["README.md", "CHANGELOG.md"],
            main: "readme",
            source_ref: "v#{@version}"],
     source_url: "https://github.com/potto007/inetex",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # List of dependencies
  defp deps do
    []
  end

  # Description
  defp description do
    """
    Elixir library for basic Internet functionality. Extends Erlang inet.
    """
  end

  # Package info
  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
     maintainers: ["Paul Otto"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/potto007/inetex"}]
  end

end
