defmodule EctoMeetup.Vote do
  use EctoMeetup.Web, :model

  @allowed_fields [:user_id, :opinion_id]
  @required_fields [:user_id, :opinion_id]

  schema "votes" do
  end

  def changeset(%__MODULE__{} = model, params) do
    model
    |> cast(params, @allowed_fields)
  end
end
