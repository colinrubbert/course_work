def collatz(n)
  longest_sequence = []
  longest_sequence << n

  # Iterative Collatz Sequence
  until longest_sequence.last == 1
    if longest_sequence.last % 2 == 0
      longest_sequence << (longest_sequence.last)/2
    else longest_sequence.last
      longest_sequence << 3*(longest_sequence.last)+1
    end
  end

  puts "Sequence length is #{longest_sequence.count}"
end

collatz(1)
collatz(2)
collatz(3)
collatz(4)
collatz(5)
collatz(6)
collatz(7)
collatz(256)
collatz(257)
collatz(1000)
