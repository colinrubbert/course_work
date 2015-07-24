def recursive_fibonacci(n)
  if n < 2
    return n
  else
    return (recursive_fibonacci(n-1) + recursive_fibonacci(n-2))
  end
end


def iterative_fibonacci(n)
  x = 0
  y = 1
  if n == 0
    return n
  else
    (1..n).each do
      z = x
      x = y
      y = z + y
    end
    return x
  end
end

# Verify that the recursive_fibonacci & iterative_fibonacci are returning the same number
puts recursive_fibonacci(35)
puts iterative_fibonacci(35)

# Benchmark both of the fibonacci sequences
require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fibonacci") { recursive_fibonacci(num) }
  x.report("iterative_fibonacci")  { iterative_fibonacci(num)  }
end
