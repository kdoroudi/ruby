# Write a function, `nearest_larger(arr, index)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
def nearest_larger(arr, i)    # array = [2,3,4,8], indec [i=1]= 3
  d = 1
  arr_length = arr.length
  while true
    l = i - d
    r = i + d

    if (l >= 0) && (arr[l] > arr[i])
      return l
    elsif (r < arr_length) && (arr[r] > arr[i])
      return r
    else (l < 0 ) && (r >= arr_length)
      return nill
    end
    d += 1
  end
end
