module Luhn
  def self.is_valid?(number)
    digits = number.to_s.split('').map {|digit| digit.to_i}
    rev_digits = digits.reverse

    doubled = rev_digits.map.with_index {|x, i| (i % 2 == 0) ? x : x * 2}
    sub9 = doubled.map {|x| (x >= 10) ? x - 9 : x}
    sum = sub9.reduce(:+)

    return sum % 10 == 0 ? true : false
  end
end

