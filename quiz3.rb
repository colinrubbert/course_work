class Madlib
  attr_accessor(:sen, :adj)

  def initialize
    @sen
    @adj

  end

  def output_madlib
    puts "#{self.sen} #{self.adj}."
  end

  def sample_madlib
    puts "#{self.sen.sample } #{self.adj.sample}."
  end

  def build_sentence
    @sen = []
      @sen << "The fox is"
      @sen << "The octopus is"
      @sen << "The sky is"
      @sen << "The emperor is"
      @sen << "The man's face is"
    @adj = []
      @adj << "orange"
      @adj << "blue"
      @adj << "green"
      @adj << "cool"
      @adj << "brilliant"
  end

end

madlib = Madlib.new
madlib.build_sentence
madlib.sample_madlib
