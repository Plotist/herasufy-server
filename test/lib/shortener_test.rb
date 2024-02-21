require "test_helper"

class ShortenerTest < ActiveSupport::TestCase
  test "#base10to62" do
    assert Shortener.base10to62(10000000001002) == "2q3Rku4o"
    assert Shortener.base10to62(10000000020002) == "2q3Rkz1G"
    assert Shortener.base10to62(10000000000012) == "2q3Rktoq"
    assert Shortener.base10to62(30020000000012) == "8WWAmf5I"
  end

  test "#base62to10" do
    assert Shortener.base62to10("Bdqe0qry") == 41001200020002
    assert Shortener.base62to10("5xufSe38") == 21011203026002
    assert Shortener.base62to10("N0FM04Vm") == 81011203032002
    assert Shortener.base62to10("NELFdG5O") == 81811809032102
  end
end