defmodule Rocketpay.Strings do
  def exibition_string(str) do
    str =
      str
      |> String.trim()
      |> String.downcase(:default)
    str
  end
end
