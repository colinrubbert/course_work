#require 'minitest/autorun'

module Luhn
  def self.is_valid?(number)
    sum = 0

    digits = number.reverse.split("")
    digits.each_with_index do |i, index|
      x = i.to_i
      ip = index + 1
      if (ip % 2 == 0)
        x *= 2
        x -= 9 if (x >= 10)
      end
      sum += x
    end

    sum % 10 == 0
  end
end


# class TestLuhn < MiniTest::Unit::TestCase
# 	def test_luhn_valid
# 		assert Luhn.is_valid?(4194560385008504)
# 	end
#
# 	def test_luhn_invalid
# 		assert ! Luhn.is_valid?(4194560385008505)
# 	end
# end

class Amex
  include Luhn

  def self.is_valid? card_number
    Luhn.is_valid? card_number
  end
end

a = Amex.new

#valid = a.is_valid?("4194560385008504")
#puts valid

valid = Amex.is_valid?("4194560385008505")
puts valid

valid = Luhn.is_valid?("4194560385008504")
puts valid

