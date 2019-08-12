defmodule <%= repo %>.Migrations.ExLocale do
  use Ecto.Migration

  def change do
    create table(:exlocale_locales, primary_key: false) do
      add :id, :text, primary_key: true, null: false
      add :name, :text, null: false, default: ""
      add :active, :boolean, default: false
      add :translations, :map
    end
  end
end