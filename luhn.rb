require 'minitest/autorun'

module Luhn
	def self.is_valid?(number)
    digits = []
    number = number.to_s.split("").each {|n| digits << n.to_i }

		sum = 0
    digits.reverse!
    digits.each_with_index do |i, index|
      ip = index + 1
      if (ip % 2 == 0)
        i = i * 2
        if i >= 10
          i = i - 9
        end
      else
        i
      end
      sum = sum + i
      puts "#{ip} : #{i}"
    end

    if sum % 10 == 0
      true
    else
      false
    end

	end
end

class TestLuhn < MiniTest::Unit::TestCase

	def test_luhn_valid
		assert Luhn.is_valid?(4194560385008504)
	end

	def test_luhn_invalid
		assert ! Luhn.is_valid?(4194560385008505)
	end

end

# valid = is_valid?(4194560385008504)
# puts valid
