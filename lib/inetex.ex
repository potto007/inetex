defmodule Inetex do

  def subnet({i1, i2, i3, _i4}) do
    {i1, i2, i3, 0}
  end

  def ip_to_str(ipaddress) do
    :inet.ntoa(ipaddress)
    |> to_string
  end

  def str_to_ip(ipstr) do
    ipstr
    |> to_char_list
    |> :inet.parse_address
    |> elem(1)
  end

end
