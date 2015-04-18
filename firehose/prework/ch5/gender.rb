def gender?(n)
  male_or_female = n
  
  if male_or_female == "male"
    return "Hello, Sir!"
  elsif male_or_female == "female"
    return "Hello, Ma'am!"
  else
    return "Hello there!"
  end
end

puts "Are you male or female?"
x = gets.chomp
puts "#{gender?(x)}"
    