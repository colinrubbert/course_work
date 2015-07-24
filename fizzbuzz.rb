def fizzbuzz
  values = []

  (1..100).each do |i|
    if i % 15 == 0
      values << "FizzBuzz"
    elsif i % 3 == 0
      values << "Fizz"
    elsif i % 5 == 0
      values << "Buzz"
    else
      values << i
    end
  end
  return values
end


puts fizzbuzz
