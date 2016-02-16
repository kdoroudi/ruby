#Given a sentence containing multiple words, find the frequency of a given word in that sentence.
def find_frequency(sentence, word)
  sentence.downcase.split.count(word.downcase)
end
