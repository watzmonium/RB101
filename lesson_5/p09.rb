# return a new array of the same structure but with the sub arrays ordered descending

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sort_arr = arr.map do |bloc|
  bloc.sort { |a, b| b <=> a}
end

p sort_arr