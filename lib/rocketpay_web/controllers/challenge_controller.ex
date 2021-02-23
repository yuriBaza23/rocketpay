defmodule RocketpayWeb.ChallengeController do
  use RocketpayWeb, :controller

  alias Rocketpay.Strings, as: Strings

  def index(conn, %{"str" => str}) do
    str
    |> Strings.exibition_string()
    |> handle_response(conn)
  end

  defp handle_response(str, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: str})
  end
end
