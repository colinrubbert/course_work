def fibonnaci(n)
  x = 0
  y = 1
  fibonnaci_numbers = []
  fibonnaci_numbers_even = []
  sum_of_fibonnaci_even_numbers = []

  if n == 0
    return n
  else
    (1..n).each do
      z = x
      x = y
      fibonnaci_numbers << x
      y = z + y
    end
  end

  fibonnaci_numbers.each do |f|
    if f % 2 == 0
      fibonnaci_numbers_even << f
    end
  end

  sum_of_fibonnaci_even_numbers = fibonnaci_numbers_even.inject do |sum, x|
     break sum if sum > 4000000
     sum + x
   end

  puts sum_of_fibonnaci_even_numbers

end
fibonnaci(300)
