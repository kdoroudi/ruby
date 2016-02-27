#Write a shuffle method that takes an array and returns a totally shuffled version. As always, you’ll want to test it, but testing this one is trickier: How can you test to make sure you are getting a perfect shuffle? What would you even say a perfect shuffle would be? Now test for it.
def shuffle arr # we may have to use * to make it feed as array
  shuf = []
  while arr.length > 0
    # Randomly pick one element of the array.
    rand_index = rand(arr.length)

    curr_index = 0
    new_arr = []

    arr.each do |item|  #Now go through each item in the array putting them all into new_arr except for the randomly chosen one, which goes into shuf.
      if curr_index == rand_index
        shuf.push item
      else
        new_arr.push item
      end
      curr_index = curr_index + 1
    end
    arr = new_arr
  end
  shuf
end
puts(shuffle([1,2,3,4,5,6,7,8,9]))
