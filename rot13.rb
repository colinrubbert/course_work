class Rot13

  def initialize value
    @value = value
  end

  def transform
    @value.tr!("abcdefghijklmnopqrstuvwxyz" , "nopqrstuvwxyzabcdefghijklm")
  end

end

puts "Enter the string you would you like to cypher/decypher?"
string = gets.downcase.chomp
rot = Rot13.new(string)
puts rot.transform
