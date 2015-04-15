def translate(phrase)
  letters = ('a'..'z').to_a
  vowels = ["a", "e", "i", "o", "u"]
  consonants = letters - vowels
  pig_latin = phrase.gsub(/\w+/) do|word| #regexp for word character one or more times in a row
    word.downcase!
    idx = word.index(/[aeiou]/)
    if idx == word[0]
      word + "ay"
    elsif word[idx-1] == "q"
      word[idx+1..word.length-idx+1] + word[0..idx] + "ay"
    else
      word[idx, word.length-idx] + word[0,idx] + "ay"
    end
  end
end



