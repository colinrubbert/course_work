# Unfinished
def is_test(n, *z)
  if z.each {|x| n % x} == 0
    puts true
  else
    puts false
  end
end

def is_divisible(n, x, y, *z)
  if n % x == 0 && n % y == 0
    puts true
  else
    puts false
  end
end

is_divisible(3, 3, 4)
is_divisible(12, 3, 4)
is_divisible(8, 3, 4, 2, 5)
is_divisible(20, 5, 4, 2, 1)

is_test(8, 3, 4, 2, 5)
is_test(20, 5, 4, 2, 1)
