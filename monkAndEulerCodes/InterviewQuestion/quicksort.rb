#quick sort
def sort return
  middle
  less
  more
arr
arr if arr.length <= 1
= arr.pop
= arr.select{|x| x < middle} = arr.select{|x| x >= middle}
￼￼￼￼￼sort(less) + [middle] + sort(more)
end
