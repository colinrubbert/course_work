puts "Enter a legth in inches"
inches = gets.chomp
cent = inches.to_f * 2.54
puts "#{inches} is #{cent} in centimeters."