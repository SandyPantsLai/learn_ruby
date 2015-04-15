def translate(phrase)
  letters = ('a'..'z').to_a
  vowels = ["a", "e", "i", "o", "u"]
  consonants = letters - vowels
  pig_latin = phrase.gsub(/\w+/) do|word| #regexp for word character one or more times in a row
    if vowels.include?(word.downcase[0])
      word + "ay"
    else
      idx = word.index(/[aeiou]/) #return index match for first a or e or etc.
      word[idx, word.length-idx] + word[0,idx] + "ay"
    end
  end
end


