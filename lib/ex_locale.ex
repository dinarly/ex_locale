defmodule ExLocale do
  @moduledoc """
  Documentation for ExLocale.
  """

  alias ExLocale.Locale

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
      [:en_GB, :en_US, :fr_FR]

  """
  def create_locales do
    [:en_GB, :en_US, :fr_FR]
  end
end
