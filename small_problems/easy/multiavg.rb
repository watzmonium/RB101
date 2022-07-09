def show_multiplicative_average(array)
  number = array.inject(:*) / array.length.to_f
  puts "The result is #{sprintf("%.3f", number)}."
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
=begin
PROBLEM --------------------
input - an array of integers
output - the average of the integers to .3f



EXAMPLES -------------------
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667



DATA STRUCTURES ------------




ALGORITHM ------------------





=end