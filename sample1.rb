good = "abcdef"
bad = "abc abc"

def test_for_uniqueness(str)
  # get array of characters, sort them
  arr = str.chars.to_a.sort
  
  last_char = nil # previous value

  # now go thru each element of the array, if one matches the next then you have a winner
  arr.each_with_index do |item, index|

    if (item == last_char)
      raise ArgumentError, "string is not unique, sorry"
    else
      last_char = item
    end

  end

  puts "all shiny, nothing to fret."

end

test_for_uniqueness(good)

test_for_uniqueness(bad)
