
def transpose(ary)
  height = ary.size - 1
  len = ary[0].size
  new_ary = []
  len.times do |row_pos|
    new_row = []
    ary.each { |row| new_row << row[row_pos] }
    new_ary << new_row
  end
  new_ary
end

def transpose2(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

=begin
PROBLEM --------------------
transpose a matrix

EXAMPLES -------------------


DATA STRUCTURES ------------
new array to write to

ALGORITHM ------------------
find the length of the matrix
find the height of the matrix
declare a new ary
count the row pos starting at 0
for the number of times the size of the length 
  create a new matrix

  store the row pos value from each matrix in new ary
  append the array to the master array

=end