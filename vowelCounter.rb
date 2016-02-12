# this program takes a string and returns the number of vowels
def count_vowels(string)
  num_vowels = 0

  i = 0
  while i < string.length
    if (string[i] == "a" || string[i] == "e" || string[i] == "i" || string[i] == "o" || string[i] == "u")
      num_vowels += 1
    end

    i += 1
  end

  return num_vowels
end

puts("type a word to get its vowels count")
word = gets().to_s
puts(count_vowels(word))
