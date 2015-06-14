def foobar(n)
  elements = ([])
  (1..50).each do |i|
    if i % 3 == 0 && i % 5 == 0
      elements << "foobar"
    elsif i % 3 == 0
      elements << "foo"
    elsif i % 5 == 0
      elements << "bar"
    else
      elements << i
    end
  end
  
  if n <= 50
    elements = elements.take(n)
    puts "Here's your number."
    elements.each do |e|
    end
  else
    puts "Sorry that's not a valid number. Try again."
  end
end

puts "Input a number between 1 and 50: "
n = gets.chomp.to_i
puts foobar(n)
