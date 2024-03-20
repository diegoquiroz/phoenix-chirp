defmodule Chirp.Timeline.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :username, :string
    field :likes_count, :integer
    field :resposts_count, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:username, :body, :likes_count, :resposts_count])
    |> validate_required([:username, :body, :likes_count, :resposts_count])
  end
end
