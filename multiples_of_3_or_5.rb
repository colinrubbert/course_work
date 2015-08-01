# Project Euler Problem 1: Find all numbers with multiples of 3 or 5 below 1000 then find the sum of the numbers found

def find_multiples

  multiples = (1..1000)
  found_numbers = []
  sum_of_found_numbers = []


  multiples.each do |m|
    if (m % 3 == 0 || m % 5 == 0) && m < 1000
      found_numbers << m
    end
  end

  sum_of_found_numbers = found_numbers.inject{|sum, x| sum + x}
  puts sum_of_found_numbers

end

find_multiples
