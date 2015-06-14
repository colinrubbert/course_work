# Define the unique method that removes duplicates
def unique(integers)
  @unique = integers
  @sorted = ([])

  @final = @unique | @sorted
  puts "#{@final}"
end

unique([3, 2, 3, 3, 2, 1, 2, 3, 1, 1, 3, 2])
unique([1, 5, 2, 0, 2, -3, 1, 10])
