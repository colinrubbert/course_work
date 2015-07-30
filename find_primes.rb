# Primes

def find_primes(prime_range)

  prime_range.each do |n|
    if (n > 2 && n % 2 == 0) || (n > 3 && n % 3 == 0) || (n > 5 && n % 5 == 0) || (n > 7 && n % 7 == 0)
    else
      puts "#{n} IS prime"
    end
  end

end


prime_range = (1..120)
find_primes(prime_range)
