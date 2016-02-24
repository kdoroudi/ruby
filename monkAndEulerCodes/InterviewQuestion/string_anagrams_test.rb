# Write a method to decide if two strings are anagrams or not
def anagrams_test(string)
  l = string.length
  i=0
  ri = -1
  while i < l
    if string[i] != string[ri]
      puts " not an anagram"
      return false

    elsif string[i] == string[ri]
      i += 1
      ri -= 1
    else
      puts "this is not a string"
    end
  end
  puts "its an anagram"
  return true
end
