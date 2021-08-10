defmodule Refuge.Wildthings.Bear do
  use Ecto.Schema
  import Ecto.Changeset

  schema "bears" do
    field :hibernating, :boolean, default: false
    field :name, :string
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(bear, attrs) do
    bear
    |> cast(attrs, [:name, :type, :hibernating])
    |> validate_required([:name, :type, :hibernating])
  end
end
