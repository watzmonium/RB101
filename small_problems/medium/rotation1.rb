def rotate_array(in_arr)
  new_ar = in_arr.dup
  new_ar << new_ar.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

=begin
PROBLEM --------------------
input - an array of any kind of data
output - in array where the first element is now the last element, and the rest are shifted
EXAMPLES -------------------

DATA STRUCTURES ------------
a new array since the array should not be muted
ALGORITHM ------------------
create a copy of the array
shift the first element
append it to the end and return it


=end