def translate(phrase)
  pig_latin = []
  phrase = phrase.split(" ")
  phrase.each do |word|
    if ["a", "e", "i", "o", "u"].include?(word[0])
      word = word + "ay"
    else
      ending = word[0] + "ay"
      word[0] = ""
      word = word + ending
    end
    pig_latin.push(word)
  end
  pig_latin.join(" ")
end
