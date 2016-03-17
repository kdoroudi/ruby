# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  word_list = sentence.split " "
  index_word = 0
  max = 0
  max_index = 0
  (0..(word_list.length-1)).each do |i|  # OR: word_list.each do |word|
    if max < word_list[i].length
      max = word_list[i].length
      max_index = i
    end
  end
  return word_list[max_index]
end


def evan_longest_word(sentence)
  max = ''
  words = sentence.split ' '
  words.each do |word|
    max = word if word.length > max.length
  end
  max
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
