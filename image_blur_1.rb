class Image
  def initialize bitmap
    @bitmap = bitmap
  end

  def output_image
    @bitmap.each do |x|
      puts x.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image
