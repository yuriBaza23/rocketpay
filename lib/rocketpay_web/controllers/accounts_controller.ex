defmodule RocketpayWeb.AccountsController do
  use RocketpayWeb, :controller

  action_fallback RocketpayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Rocketpay.Account{} = account} <- Rocketpay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end
end
