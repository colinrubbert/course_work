# Project Euler Problem: Find all numbers with multiples of 3 or 5 up to 1000

def find_multiples

  multiples = (1..1000)
  found_numbers = []
  sum_of_found_numbers = []


  multiples.each do |m|
    if (m % 3 == 0 || m % 5 == 0)
      found_numbers << m
    end
  end

  sum_of_found_numbers = found_numbers.inject{|sum, x| sum + x}
  puts sum_of_found_numbers

end

find_multiples
