# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#

def word_unscrambler(str, words)
  str_letters = str.split("").sort

  res = []
  words.each do |word|
    word_letters = word.split("").sort
    res << word if str_letters == word_letters
  end

  res
end
