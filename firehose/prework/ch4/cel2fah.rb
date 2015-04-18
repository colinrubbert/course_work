def cel(c)
  return c * 9/5 +32
end

def cel2fah(c)
  fah = cel(c)
  return fah
end

puts "Enter a number in Celsius that you would like to see in Fahrenheit:"
x = gets.chomp.to_i
puts cel2fah(x)