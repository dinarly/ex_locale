defmodule Mix.Tasks.ExLocale.GenExLocaleMigration do
  use Mix.Task

  alias Mix.{Project, Generator}

  @shortdoc "Creates the migration needed by ExLocale"

  @moduledoc """
  Creates the storage for the ExLocale, where it keeps id, name and
  activation status information. You must provide the name of the repo as an argument.
  """

   @doc false
   def run(args) do
    if Project.umbrella? do
      Mix.raise "mix ex_locale.gen_ex_locale_migration can only be run inside an application directory"
    end

    {_opts, [repo], []} = OptionParser.parse(args, switches: [debug: :boolean])

    source = Application.app_dir :ex_locale, "priv/migrations/ex_locale.exs"
    target = "priv/repo/migrations/#{timestamp()}_init_ex_locale.exs"
    binding = [repo: repo]
    Generator.create_file(target, EEx.eval_file(source, binding))
    IO.puts "Please run `mix ecto.migrate!`"
  end

  defp timestamp do
    {{y, m, d}, {hh, mm, ss}} = :calendar.universal_time()
    "#{y}#{pad(m)}#{pad(d)}#{pad(hh)}#{pad(mm)}#{pad(ss)}"
  end

  defp pad(i) when i < 10, do: << ?0, ?0 + i >>
  defp pad(i), do: to_string(i)
end