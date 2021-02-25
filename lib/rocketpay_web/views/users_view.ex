defmodule RocketpayWeb.UsersView do
  def render("create.json", %{
    user: %Rocketpay.User{
      id: id,
      name: name,
      nickname: nickname,
      account: %Rocketpay.Account{
        id: account_id,
        balance: balance
      }
    }}) do
    %{
      message: "User Created",
      user: %{
        id: id,
        name: name,
        nickname: nickname,
        account: %{
          id: account_id,
          balance: balance
        }
      }
    }
  end
end
