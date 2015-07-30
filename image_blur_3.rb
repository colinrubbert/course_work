class Image
  attr_accessor :bitmap

  def initialize bitmap
    @bitmap = bitmap
  end

  def output_image
    @bitmap.each do |x|
      puts x.join
    end
  end

  def transform(number)
    n = number.to_i

    n.times do
      # Serialize @bitmap into binary to store locations of "1's" to be reconstituted when needed
      d = Marshal.load(Marshal.dump(self.bitmap))
      @bitmap.each_with_index do |row, y|
        row.each_with_index do |num, x|
          if d[y][x] == 1
            @bitmap[y + 1][x] = 1 unless y == self.bitmap.length - 1
            @bitmap[y - 1][x] = 1 unless y == 0
            @bitmap[y][x + 1] = 1 unless x == self.bitmap[y].length - 1
            @bitmap[y][x - 1] = 1 unless x == 0
          end
        end
      end
    end
  end

  # Testing marshaling
  # def test_image
  #   t = Marshal.load(Marshal.dump(@bitmap))
  #   print t
  #  @bitmap.each do |t|
  #    print t
  #  end
  # end

end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1]
])

image.output_image
puts ""
# image.test_image
# puts ""
puts "How far do you want the Manhattan Distance to be?"
number = gets
number = number.chomp
image.transform(number)
puts ""
image.output_image
