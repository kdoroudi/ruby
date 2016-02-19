# this program takes a String as the argument, inserts the length of that String into another String
def string_length_interpolater(incoming_string)
  "The string you just gave me has a length of #{incoming_string.length - 1}" # for some reason when using the get method to store a string ruby takes an extra index so to fix that we subrtact 1 from the length even tho the physical length of the string in ruby is the length of the word plus one
end

puts("this program takes a String as the argument, inserts the length of that String into another String")
puts("please type in a string")
newString = gets()
puts string_length_interpolater(newString)
