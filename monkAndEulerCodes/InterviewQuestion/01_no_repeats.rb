# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
def no_repeat?(string)
  n = string.length
  for i in 0..n-1
    for j in 0..n-1
      if (i != j) && (string[i] == string[j]) then
        return false
      end
    end
  end
  return true
end

def no_repeats(year_start, year_end)
  years_list = []
  starts = year_start.to_i
  ends = year_end.to_i
  for i in starts..ends
    if no_repeat?(i.to_s)
      years_list << i
    end
  end
  years_list
end
