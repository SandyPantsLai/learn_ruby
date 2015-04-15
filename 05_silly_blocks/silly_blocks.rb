def reverser
  reverse_phrase = yield.split(" ").each do |word|
    word.reverse!
  end
  reverse_phrase.join(" ")
end