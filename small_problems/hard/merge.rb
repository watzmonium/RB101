def merge!(ar1, ar2)
  new_arr = []

  loop do
    if ar1.empty?
      break if ar2.empty?
      new_arr << ar2.shift
    elsif ar2.empty?
      new_arr << ar1.shift
    else
      new_arr << ar1.shift if ar1.first < ar2.first
      new_arr << ar2.shift if ar1.first > ar2.first
    end
  end
  new_arr
end

def merge(ar1, ar2)
  new_arr = []
  start = 0
  max = ar2.size

  ar1.each do |number|
    while start < max && ar2[start] <= number
      new_arr << ar2[start]
      start += 1
    end
    new_arr << number
  end
  
  return ar2 if new_arr.empty?
  new_arr
end


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

=begin
PROBLEM --------------------
input - two sorted arrays
output - a single sorted array 

the array cannot be sorted via the sort method
EXAMPLES -------------------

DATA STRUCTURES ------------
one new array



ALGORITHM ------------------
declare a new array
declare two ints equal to 0
loop while array 1 and array 2 not empty
check array 1 counter and array 2 counter, whichever int is lower, store in array
incriment that int

=end