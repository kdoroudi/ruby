#Create a method 'random_select' which, when given an array of elements (array) and a number (n), returns n randomly selected elements from that array.
def random_select(array, n)
  result = []
  n.times do
    result << array[rand(array.length)]
  end
  result
end
