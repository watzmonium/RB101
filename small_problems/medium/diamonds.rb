def top_d(loop_num, stars)
  return if stars < 1
  top_d(loop_num + 1, stars - 2)
  puts ' ' * loop_num + '*' * stars
end

def bot_d(loop_num, stars)
  return if stars < 1
  puts ' ' * loop_num + '*' * stars
  bot_d(loop_num + 1, stars - 2)
end

def diamond(size)
  return if size.even?
  top_d(0, size)
  bot_d(1, (size - 2))
end

diamond(6)

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond2(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

=begin
PROBLEM --------------------
function creates a diamond of n height and n wideth, where each
row is 2 larger than the last and n is odd

EXAMPLES -------------------
diamond(3)

 *
***
 *



DATA STRUCTURES ------------
n/a



ALGORITHM ------------------
print top
  puts loopnum spaces, and stars


=end