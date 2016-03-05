def palindrome?(sentence)
  downcase_stripped_sentence = sentence.downcase.gsub(" ", "")
  downcase_stripped_sentence  ==  downcase_stripped_sentence.reverse
end
