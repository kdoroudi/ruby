# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
def ordered_vowel_word?(word)
  vowels = ["a", "e", "i", "o", "u"]

  letters_in_word = word.split("")
  vowels_in_word = letters_in_word.select{ |letter| vowels.include?(letter) }
  (0...(vowels_in_word.length - 1)).all? do |i|
    vowels_in_word[i] <=  vowels_in_word[i + 1]
  end
end




def ordered_vowel_words(str)
  words = str.split " "
  o_v_w = words.select do |x|
    ordered_vowel_word?(x)
  end
  o_v_w.join(" ")
end
