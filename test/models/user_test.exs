defmodule EctoMeetup.User.Test do
  use EctoMeetup.ModelCase, async: true

  testing EctoMeetup.User

  setup do
    valid_params = %{}

    {:ok, %{valid_params: valid_params}}
  end

  describe "valid_params" do
    validate_params!
  end

  describe "email" do
    required_field :email, tags: :skip
    unique_field :email, tags: :skip
  end

  describe "password" do
    required_field :password, tags: :skip
    must_match :password, :password_confirmation, tags: :skip
    minimum_length :password, 8, tags: :skip
  end
end
