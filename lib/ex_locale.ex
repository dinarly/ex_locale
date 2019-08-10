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
          fr_FR: "anglais (Royaume-Uni)",
          ar_SY: "الإنجليزية (المملكة المتحدة)"
        }
      },
      %Locale{
        id: :fr_FR,
        name: "French (France)",
        translations: %{
          fr_FR: "français (France)",
          ar_SY: "الفرنسية (فرنسا)"
        }
      },
      %Locale{
        id: :ar_SY,
        name: "Arabic (Syria)",
        translations: %{
          fr_FR: "arabe (Syrie)",
          ar_SY: "العربية (سوريا)"
        }
      }
    ]
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
