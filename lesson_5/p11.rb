# use either select or reject among others to return a new similar array
# with only values multiples of 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |subr|
  subr.select { |num| num % 3 == 0}
end

p new_arr