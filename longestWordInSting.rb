#This program takes in a sentence as a string and Return the longest word in the sentence.
def longest_word(sentence)
  words = sentence.split(" ") # im using the split string method

  longest_word = nil

  word_idx = 0 #idx is the index

  while word_idx < words.length
    current_word = words[word_idx]

    if longest_word == nil
      longest_word = current_word

    elsif longest_word.length < current_word.length
      longest_word = current_word

    end

    word_idx += 1

  end

  return longest_word

end
puts("please type in your sentence")
newSentence = gets().to_s
puts(longest_word(newSentence))
