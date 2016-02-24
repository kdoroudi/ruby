# implement an algorithm to determine if a string has all unique characters What if you can not use additional data structures?
def char_dup_test(string)
  n = string.length
  for i in 0..n-1
    for j in 0..n-1
      if (i != j) && (string[i] == string[j]) then
        #puts "there is a repeat"
        return true 
      end
    end
  end
  #puts "no repeats"
  return false
end


# using the ruby string interpolation tools to simply check the size of the string vs the size of the uniq char in the string
def dup_test_simple(s)
  s = s.split('')
  s.uniq.size != s.size
end
