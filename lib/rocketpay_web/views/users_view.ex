defmodule RocketpayWeb.UsersView do
  def render("create.json", %{user: %Rocketpay.User{id: id, name: name, nickname: nickname}}) do
    %{
      message: "User Created",
      user: %{
        id: id,
        name: name,
        nickname: nickname
      }
    }
  end
end
