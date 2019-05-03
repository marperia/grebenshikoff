defmodule Grebenshikoff.Admin.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :name, :string
    field :pass, :string
    field :status, :float

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :pass, :status])
    |> validate_required([:name, :pass, :status])
  end
end
