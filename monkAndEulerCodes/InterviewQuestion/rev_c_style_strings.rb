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

def revese1(string)
  for n in 1..string.length
    string << string[-n]
  end
  return string
end

  def reverse_in_place(str)   # [(temp)     [(ith)()()()()()(jth)]    [(temp)]
    i = 0
    l = str.length
    j = l - 1
    while i < j
      temp = str[i]
      str[i] = str[j]
      string[j] = temp
       j +=1
       i +=1
     end
  end

def reverse_copy(str)   # str = [()()()()()()]  buffer = [()()()()]
  buffer = str.dup
  l = str.length - 1
  for i in 0..l
    buffer[i] = str[l-i]
  end
  buffer
end
