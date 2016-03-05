#Given an Array, return the elements that are present exactly once in the array.
#You need to write a method called non_duplicated_values to accomplish this task.

def non_duplicated_values(values)
  values.find_all { |x| values.count(x) == 1 }
end
