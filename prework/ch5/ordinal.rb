def lopped_num(num)
  ordinal_num = num % 10
  
  if ordinal_num == 1
    return "#{num}st"
  elsif ordinal_num == 2
    return "#{num}nd"
  elsif ordinal_num == 3
    return "#{num}rd"
  else
    return "#{num}th"
  end
end

def statement
  statement = "Your number is "
end

puts "Enter a number: "
num = gets.chomp.to_i

if num == 0
  puts "#{statement}zero."
elsif num == ( 11 || 12 || 13 )
  puts "#{statement}#{num}th."
else
  puts "#{statement}#{lopped_num(num)}."
end
