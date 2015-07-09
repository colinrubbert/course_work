# Unfinished

def check_braces(expressions)

    opposites = { "["=>"]", "{"=>"}", "("=>")", "]"=>"[", "}"=>"{", ")"=>"("}

    l_brace = Array.new
    r_brace = Array.new

    split_expressions = expressions.each do |s|
      s.split("")
    end
    split_expressions.delete_if { |e| e.match(/\s/)}

    split_expressions.each do |x|
      x = x.split("")
      puts x
      if (x == "[" || x == "(" || x == "{")
        l_brace.push(x)
      else (x == "]" || x == ")" || x == "}")
        r_brace.push(x)
      end
    end

    #puts r_brace
    l_brace.each_index do |i|
      if l_brace[i] =! opposites[r_brace[i]]
        puts 0
      else
        puts 1
      end
    end

end

expressions = [ ")(){}", "[]({})", "([])", "{()[]}", "([)]" ]
check_braces(expressions)
