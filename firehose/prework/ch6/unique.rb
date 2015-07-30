#################### using array.uniq #########

def uniq_meth
  unique = ([1, 2, 3, 4, 5, 5, 6, 7, 8, 1, 2]) 
  unique = unique.uniq
end

puts "#{uniq_meth}"

#################### without array.uniq ########

unique = ([1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4])
num = ([])

unique.each do |uniq|
  if num.include?(uniq)
  else
    num << uniq
  end
end

puts "#{num}"

#################### with input #################

def unique_input
  puts "Please input a number between 0-5: "
  input = ([])
  while input.count != 10
    puts "#{input}"
    num = gets.chomp.to_i
    input << num
  end
  input = input.uniq
end
puts "#{unique_input}"
