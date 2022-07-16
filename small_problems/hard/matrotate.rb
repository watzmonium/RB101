def rotate90(arr)
  width = arr.size - 1
  height = arr[0].size

  new_arr = []
  height.times do |place|
    temp_arr = []
    arr.each { |row| temp_arr << row[place] }
    new_arr << temp_arr.reverse
  end
  new_arr
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

=begin
PROBLEM --------------------
input - an array of dimensions x, y
output - an array of dimensions y, x where top row n rows are the right n columns, etc

EXAMPLES -------------------
DATA STRUCTURES ------------
need new arrays to write the matricies to
ALGORITHM ------------------
determine the length and width of the matrix
declare a new matrix array
length number of times
  declare an array
  add to it each array's array[0] value
  append to original array

=end