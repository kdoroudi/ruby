# this program takes a string prints back the reverse
def reverse(string)
  reversed_string = ""

  i = 0
  while i < string.length
    reversed_string = string[i] + reversed_string
    puts(i)
    puts(reversed_string) # to show how the string is being reversed
    i += 1
  end

  return reversed_string
end

puts("type in a tring that you want me to reverse")
word = gets().to_s
puts(reverse(word))
