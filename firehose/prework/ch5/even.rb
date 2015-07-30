def is_even?(n)
  remainder_when_divided_by_2 = n % 2
  
  if remainder_when_divided_by_2 == 0
    return true
  else
    return false
  end
end

def is_odd?(n)
  return ! is_even?(n)
end

def is_even_and_divisible_by_five?(n)
  remainder_when_divided_by_5 = n % 5
  if is_even?(n) && remainder_when_divided_by_5 == 0
    return true
  else
    return false
  end
end

puts "1 is even? #{is_even?(1)} - is_odd? #{is_odd?(1)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(1)}"
puts "2 is even? #{is_even?(2)} - is_odd? #{is_odd?(2)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(2)}"
puts "3 is even? #{is_even?(3)} - is_odd? #{is_odd?(3)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(3)}"
puts "4 is even? #{is_even?(4)} - is_odd? #{is_odd?(4)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(4)}"
puts "5 is even? #{is_even?(5)} - is_odd? #{is_odd?(5)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(5)}"
puts "6 is even? #{is_even?(6)} - is_odd? #{is_odd?(6)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(6)}"
puts "7 is even? #{is_even?(7)} - is_odd? #{is_odd?(7)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(7)}"
puts "8 is even? #{is_even?(8)} - is_odd? #{is_odd?(8)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(8)}"
puts "10 is even? #{is_even?(10)} - is_odd? #{is_odd?(10)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(10)}"
puts "15 is even? #{is_even?(15)} - is_odd? #{is_odd?(15)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(15)}"
puts "20 is even? #{is_even?(20)} - is_odd? #{is_odd?(20)} - is_even_and_divisible_by_five #{is_even_and_divisible_by_five?(20)}"