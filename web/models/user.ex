defmodule EctoMeetup.User do
  use EctoMeetup.Web, :model

  @allowed_fields []
  @required_fields []

  schema "users" do
  end

  def changeset(%__MODULE__{} = model, params) do
    model
    |> cast(params, @allowed_fields)
  end
end
