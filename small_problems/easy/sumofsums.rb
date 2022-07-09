def sum_of_sums(array)
  running_total = 0
  array.each_with_object([]) do |num, ary|
    ary << num
    running_total += ary.sum
  end
  running_total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin
PROBLEM --------------------
input - an array of integers
output - sum of each sequential number - n total addition problems

EXAMPLES -------------------
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

DATA STRUCTURES ------------
running new array



ALGORITHM ------------------
add the each element of the array to a new array
compute sum and add to a running total each time
return total




=end