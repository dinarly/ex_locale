defmodule ExLocaleTest do
  use ExUnit.Case
  doctest ExLocale

  test "lists locales" do
    assert ExLocale.create_locales("en_GB") == 563
  end
end
