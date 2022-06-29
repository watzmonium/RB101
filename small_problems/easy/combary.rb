def merge(ar1, ar2)
  ar1.union(ar2)
  # alias for ar1 | ar2
end

def merge2(ar1, ar2)
  new_arr = ar1 + ar2
  new_arr.flatten.uniq
end

p merge2([1, 3, 5], [3, 6, 9])

=begin
PROBLEM --------------------
input - 2 arrays
output - 1 array that has all values from both arrays without duplicates 

EXAMPLES -------------------
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]



DATA STRUCTURES ------------
one array merged



ALGORITHM ------------------





=end