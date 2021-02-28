defmodule Rocketpay.Users.CreateTest do
  use Rocketpay.DataCase
  alias Rocketpay.User
  alias Rocketpay.Users.Create

  describe "call/1" do
    test "when all params are valid, returns an user" do
      params = %{
        name: "Yuri",
        password: "olamundo",
        nickname: "bazinha",
        email: "yuribaza@gmail.com",
        age: 20
      }

      {:ok, %User{id: user_id}} = Create.call(params)
      user = Repo.get(User, user_id)

      assert %User{name: "Yuri", age: 20, id: ^user_id} = user
    end
  end

  test "when there are invalid params, returns an user" do
    params = %{
      name: "Yuri",
      nickname: "bazinha",
      email: "yuribaza@gmail.com",
      age: 15
    }

    {:error, changeset} = Create.call(params)

    expected_response =  %{
      age: ["must be greater than or equal to 18"],
      password: ["can't be blank"]
    }

    assert errors_on(changeset) == expected_response
  end
end
