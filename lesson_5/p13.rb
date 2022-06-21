# return new array same strucure but ordered by odd somehow?

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

new_arr = arr.sort_by do |subr|
  subr.select { |num| num.odd?}
end

p new_arr