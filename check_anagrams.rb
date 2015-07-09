def check_anagrams(first_words, second_words)
  @first_words = first_words
  @second_words = second_words



#  Test char.sort to establish true or false relation
#  puts @first_words[0].chars.sort == @second_words[0].chars.sort
#  puts @first_words[1].chars.sort == @second_words[1].chars.sort
#  puts @first_words[2].chars.sort == @second_words[2].chars.sort
#  puts @first_words[3].chars.sort == @second_words[3].chars.sort

#  Create If/Else statement to output 1 or 0 based on True or False per challenge requirements
#  if @first_words[0].chars.sort == @second_words[0].chars.sort
#    puts 1
#  else
#    puts 0
#  end

#  if @first_words[1].chars.sort == @second_words[1].chars.sort
#    puts 1
#  else
#    puts 0
#  end

#  if @first_words[2].chars.sort == @second_words[2].chars.sort
#    puts 1
#  else
#    puts 0
#  end

#  if @first_words[3].chars.sort == @second_words[3].chars.sort
#    puts 1
#  else
#    puts 0
#  end

# Final Solution
  @first_words.zip @second_words
  @first_words.zip(@second_words).each do |f, s|
    if f.chars.sort == s.chars.sort
      puts 1
    else
      puts 0
    end
  end

end

first_words = ["cinema", "host", "aba", "train"]
second_words = ["iceman", "shot", "bab", "rain"]
check_anagrams(first_words, second_words)
