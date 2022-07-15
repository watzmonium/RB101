def swap_values(ary, row, column)
  ary[row][column], ary[column][row] = ary[column][row], ary[row][column]
end

def transpose!(ary)
  len = ary.size - 1
  start = 1
  (0..(len-1)).each do |row|
    (start..len).each { |column| swap_values(ary, row, column) }
    start += 1
  end
end

matrix = [
  [1, 5, 8, 4],
  [4, 7, 2, 9],
  [3, 9, 6, 1],
  [2, 3, 4, 5]
]
new_matrix = matrix.transpose
transpose!(matrix)

p matrix == new_matrix

=begin
#p swap 
0, 1 = 1, 0 
0, 2 = 2, 0  
1, 2 = 2, 1

row 0-(n-1)
column 1-n
=end