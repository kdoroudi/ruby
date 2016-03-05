#Write a method called reverse_sign that takes one object - an Integer - and
#changes a positive value to negative one, and vice-versa.

def reverse_sign(an_integer)
  return 0 - an_integer
end

puts reverse_sign(5643)
puts reverse_sign(-978)
puts reverse_sign(0)
