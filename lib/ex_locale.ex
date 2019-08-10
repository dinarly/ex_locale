defmodule ExLocale do
  @moduledoc """
  Documentation for ExLocale.
  """

  alias ExLocale.Locale

  def list_locales do
    [
      %Locale{id: :en_GB, name: "", translations: ""},
      %Locale{id: :en_US, name: "", translations: ""},
      %Locale{id: :fr_FR, name: "", translations: ""}
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
