defmodule EctoMeetup.User do
  use EctoMeetup.Web, :model

  @allowed_fields [:email, :password, :password_confirmation]
  @required_fields [:email, :password]

  schema "users" do
    field :email, :string
    field :encrypted_password, :string
    field :password, :string, virtual: true
    field :password_confirmation, :string, virtual: true
  end

  def changeset(%__MODULE__{} = model, params) do
    model
    |> cast(params, @allowed_fields)
    |> validate_required(@required_fields)
    |> unique_constraint(:email)
  end

  def with_email(queryable, email) do
    from u in queryable,
      where: u.email == ^email
  end
end
