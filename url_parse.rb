class Parse

  def initialize url
    @url = url
  end

  def filter
    @url.split('://').first
  end

end

parse = Parse.new("https://google.com")
puts parse.filter
