# ExLocale

ExLocale is an Elixir module for the awesome https://github.com/umpirsky/locale-list to populate an Ecto database with this translated locale data licensed under the MIT license.

This repo contains a submodule, please clone correctly or use the following command later:
```
git submodule update --init --recursive --progress
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_locale` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_locale, "~> 0.1.0"}
  ]
end
```

## Database migration
Here we use the repo example name of `Dinarly`:

```
mix ex_locale.gen_ex_locale_migration Dinarly
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_locale](https://hexdocs.pm/ex_locale).