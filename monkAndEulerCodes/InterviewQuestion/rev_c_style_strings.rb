# Write code to reverse a C-Style String (C-String means that “abcd” is represented as five characters, including the null character )
def reverse(string)
  string = string + " "
  reversed_string = ""

  i = 0
  while i < string.length
    reversed_string = string[i] + reversed_string
    i += 1
  end
  return reversed_string
end
