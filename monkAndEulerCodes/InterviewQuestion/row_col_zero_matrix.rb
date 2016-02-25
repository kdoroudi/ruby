# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column is set to 0
def rand_martix_n(n,m)
matrix = []
for i in 0..n
  matrix << [] # this createsan 0 by n matrix
end
for i in 0..n
  for j in 0 ..m
    matrix[] << rand(j)
  end
end
return matrix
end

vectors = []
for j in 1..10
  vectors << rand(10)
end
