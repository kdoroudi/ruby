# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column is set to 0
def rand_martix_n(row,col)
  raise Exception.new("bad input") if row == 0 or col == 0
  matrix = []
  n = row.to_i
  m = col.to_i
  for i in 1..n
    vector =[]
    for j in 1..m
      vector << rand(10)
    end
    matrix << vector
  end
  return matrix
end

def print_matrix(matrix)
  for i in 0..matrix.length
    puts matrix[i].inspect
  end
end

print_matrix(rand_martix_n(10,10))
#puts rand_martix_n(10,10).inspect
