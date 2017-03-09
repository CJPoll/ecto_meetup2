defmodule EctoMeetup.User.Test do
  use EctoMeetup.ModelCase, async: true

  testing EctoMeetup.User

  setup do
    valid_params = %{
      email: "cjpoll@gmail.com",
      password: "password",
      password_confirmation: "password"
    }

    {:ok, %{valid_params: valid_params}}
  end

  describe "valid_params" do
    validate_params!
  end

  describe "email" do
    required_field :email
    unique_field :email
  end

  describe "password" do
    required_field :password
    must_match :password, :password_confirmation
    minimum_length :password, 8
  end
end
