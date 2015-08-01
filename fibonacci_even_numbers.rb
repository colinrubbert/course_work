def fibonacci(n)
  x = 0
  y = 1
  fibonacci_numbers = []
  fibonacci_numbers_even = []
  sum_of_fibonacci_even_numbers = []

  if n == 0
    return n
  else
    (1..n).each do
      z = x
      x = y
      fibonacci_numbers << x
      y = z + y
    end
  end

  fibonacci_numbers.each do |f|
    if f % 2 == 0
      fibonacci_numbers_even << f
    end
  end

  sum_of_fibonacci_even_numbers = fibonacci_numbers_even.inject do |sum, x|
     break sum if sum > 4000000
     sum + x
   end

  puts sum_of_fibonacci_even_numbers

end
fibonacci(300)
