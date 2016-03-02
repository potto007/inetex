# Inetex

Elixir library for basic Internet functionality. Extends Erlang inet.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add inetex to your list of dependencies in `mix.exs`:

        def deps do
          [{:inetex, "~> 0.0.1"}]
        end

  2. Ensure inetex is started before your application:

        def application do
          [applications: [:inetex]]
        end
