def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
=begin
PROBLEM --------------------
input - 2 arrays
output - new array with elements from each array alternating
both arrays are non-empty and have the same number of elements

EXAMPLES -------------------
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']



DATA STRUCTURES ------------




ALGORITHM ------------------





=end