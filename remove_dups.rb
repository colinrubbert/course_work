def unique(integers)
  @unique = integers
  sorted = []

  @unique.each do |u|
    if sorted.include?(u)
    else
      sorted << u
    end
  end
  puts "#{sorted}"
end

unique([1, 5, 2, 0, 2, -3, -3, 1, 10])
