# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column is set to 0
def rand_martix_n(row,col)
  raise Exception.new("bad input") if row == 0 or col == 0
  matrix = []
  n = row.to_i
  m = col.to_i
  for i in 1..n
    vector =[]
    for j in 1..m
      vector << j*i % 12
    end
    matrix << vector
  end
  return matrix
end


#puts rand_martix_n(10,10).inspect

def matrix_rotate(matrix)
  rot_matrix = []
  new_col_size = matrix.length - 1
  new_row_size = matrix[0].size - 1
  for i in 0..new_row_size
    rot_vector = []
    for j in 0..new_col_size
      rot_vector << matrix[new_col_size - j][i]
    end
    rot_matrix << rot_vector
  end
  return rot_matrix
end


def print_matrix(matrix)
  for i in 0..matrix.length
    puts matrix[i].inspect
  end
end
#print_matrix(rand_martix_n(10,10))
#print_matrix(matrix_rotate(rand_martix_n(10,10)))
# this code finds the 0s in the matrix and stores it as a tuple in an array called zeros
def zero_find(matrix)
  zeros = []
  row_size = matrix.length - 1
  col_size = matrix[0].length - 1
  for i in 0..row_size
    for j in 0..col_size
      if matrix[i][j] == 0
        zeros << [i,j]
      end
    end
  end
  return zeros
end
