defmodule ExLocale do
  @moduledoc """
  Documentation for ExLocale.
  """

  alias ExLocale.Locale
  alias NimbleCSV

  alias NimbleCSV.RFC4180, as: CSV

  def list_locales do
    [
      %Locale{
        id: :en_GB,
        name: "English (United Kingdom)",
        translations: %{
          "fr_FR" => %{name: "anglais (Royaume-Uni)"},
          "ar_SY" => %{name: "الإنجليزية (المملكة المتحدة)"}
        }
      },
      %Locale{
        id: :fr_FR,
        name: "French (France)",
        translations: %{
          "fr_FR" => %{name: "français (France)"},
          "ar_SY" => %{name: "الفرنسية (فرنسا)"}
        }
      },
      %Locale{
        id: :ar_SY,
        name: "Arabic (Syria)",
        translations: %{
          "fr_FR" => %{name: "arabe (Syrie)"},
          "ar_SY" => %{name: "العربية (سوريا)"}
        }
      }
    ]
  end

  def shuffle(locales) do
    Enum.shuffle(locales)
  end

  @doc """
  Hello world.

  ## Examples

      iex> ExLocale.create_locales()
      563

  """
  def create_locales do
    load_csv("locale-list/data/en_GB/locales.csv")
    |> Enum.count()
  end

  def load_csv(filename) do
    filename
    |> File.stream!
    |> CSV.parse_stream
    |> Stream.map(fn [id, name] ->
      %{id: id, name: name}
      IO.puts inspect(id)
    end)
  end
end
