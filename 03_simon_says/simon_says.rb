def echo(sentence)
  sentence
end

def shout(sentence)
  sentence.upcase
end

def repeat(sentence, num = 1)
  num = 2 if num == 1
  sentence = sentence + (" " + sentence) * (num - 1)
end

def start_of_word(word, letters)
  word[0...letters]
end

def first_word(sentence)
  sentence.split(" ").first
end

def titleize(sentence)
  title = ""
  sentence = sentence.split(" ")
  sentence.each do |word|
    word.capitalize! unless word != sentence.first && (word == "and" || word == "over" || word == "the")
  end
  title = sentence.join(" ")
end



