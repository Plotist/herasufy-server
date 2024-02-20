module Shortener

  def self.base10to62(num)
    result = ""
    base = 62
    while num != 0 do
      result.prepend BASE62_ALPHABET[num % base].to_s
      num /= base
    end
    while result.length != 8 do
      result.prepend "0"
    end
    result
  end

  def self.base62to10(string)
    result = 0
    string.split("").each_with_index do |b62num, i|
      result+=BASE62_ALPHABET.find_index(b62num)*(62**(string.length - (i+1)))
    end
    result
  end
end

# Examples:
# 10000000000000 -> 2q3Rktoe
# 10000000000001 -> 2q3Rktof
# 10000000000002 -> 2q3Rktog
# 10000000000003 -> 2q3Rktoh
# 10000000000004 -> 2q3Rktoi
# 10000000001002 -> 2q3Rku4o
# 10000000020002 -> 2q3Rkz1G
# 10000000000012 -> 2q3Rktoq
# 30020000000012 -> 8WWAmf5I | Convert back: (8*(62**7))+(32*(62**6))+(32*(62**5))+(10*(62**4))+(48*(62**3))+(41*(62**2))+(5*(62**1))+(18*(62**0))