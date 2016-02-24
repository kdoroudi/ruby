def test_uniq(str)

  arr = str.chars.to_a.sort

  last_char = nil

  arr.each_with_index do |item, index|

    if (item == last_char)
      raise ArgumentError, "they are not the same!"
    else
      last_char = item
    end

  end
  puts "everything looks good"

end

good = "abcdef"
bad = "abc abc"


test_uniq(good)
test_uniq(bad)
