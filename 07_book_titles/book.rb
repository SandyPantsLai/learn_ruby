class Book
  attr_reader :title
  def initialize
  end

  def title=(str)
    title = str.split(" ")
    title.each do |word|
      word.capitalize! unless word != title.first && ["and", "a", "an", "the", "of", "in"].include?(word)
    end
    @title = title.join(" ")
  end
end

