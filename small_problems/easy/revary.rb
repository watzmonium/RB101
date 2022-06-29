def reverse!(in_array)
  start = 0
  final = -1
  mid = in_array.size / 2
  while start < mid
    in_array[start], in_array[final] = in_array[final], in_array[start]
    start += 1
    final -= 1
  end
  in_array
end

list = []
p reverse!(list)


=begin
PROBLEM --------------------
input is an array
output is the same array with all elements reversed


EXAMPLES -------------------
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

DATA STRUCTURES ------------
array obviously
ALGORITHM ------------------
determine half way point for array
set variables for start and end equal to the 0th and -1st entry of the array
take the 0th entry of the array and the -1st entry and swap them
add and subtract 1 to teach variable
do this until the start variable is half way


=end