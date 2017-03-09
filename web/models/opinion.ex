defmodule EctoMeetup.Opinion do
  use EctoMeetup.Web, :model

  @allowed_fields [:opinion]

  schema "opinions" do
  end

  def changeset(%__MODULE__{} = model, params) do
    model
    |> cast(params, @allowed_fields)
  end
end
