def multiply_all_pairs(ar1, ar2)
  ar1.product(ar2).map { |pair| pair.inject(:*) }.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

=begin
PROBLEM --------------------
input - 2 arrays where each array contains a list of numbers
output - new array that contains the product of every pair of numbers, sorted



EXAMPLES -------------------
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]



DATA STRUCTURES ------------




ALGORITHM ------------------





=end