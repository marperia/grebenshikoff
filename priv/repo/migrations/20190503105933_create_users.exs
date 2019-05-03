defmodule Grebenshikoff.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :pass, :string
      add :status, :float

      timestamps()
    end

  end
end
