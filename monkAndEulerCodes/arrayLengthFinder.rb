
#Given an array containing some strings, return an array containing the length of those strings.

def length_finder(input_array)
  input_array.map{|name| name.length}
end
