class Book
  attr_reader :title
  def initialize
  end

  def title=(str)
    title = str.split(" ").each do |word|
      word.capitalize!
    end
    @title = title.join(" ")
  end
end

