def reverser
  reverse_phrase = yield.split(" ").each do |word|
    word.reverse!
  end
  reverse_phrase.join(" ")
end

def repeater(repeat = 1)
  repeat.times do
    yield
  end
end