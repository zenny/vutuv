defmodule Vutuv.SearchTerm do
  use Vutuv.Web, :model

  schema "search_terms" do
    field :value, :string
    field :similarity, :integer

    belongs_to :user, Vutuv.User
    timestamps
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, [:value, :similarity])
  end
end
