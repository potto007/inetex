defmodule InetexTest do
  use ExUnit.Case
#  doctest Inetex

  test "changes tuple-based ipaddress into string" do
    assert Inetex.ip_to_str({127,0,0,1}) ==  "127.0.0.1"
  end

  test "changes ipaddress string into tuple" do
    assert Inetex.str_to_ip("127.0.0.1") == {127,0,0,1}
  end

  test "subnet created from ipaddress" do
    assert Inetex.subnet({127,0,0,1}) == {127,0,0,0}
  end

end
