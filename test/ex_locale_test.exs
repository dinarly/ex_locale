defmodule ExLocaleTest do
  use ExUnit.Case
  doctest ExLocale

  test "lists locales" do
    assert ExLocale.create_locales() == [:en_GB, :en_US, :fr_FR]
  end
end
