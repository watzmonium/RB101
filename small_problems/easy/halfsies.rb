def halvsies(in_arr)
  half_len = in_arr.size / 2
  half_len -= 1 if in_arr.size % 2 == 0
  new_arr = [[],[]]

  0.upto(half_len) do |num|
    new_arr[0][num] = in_arr[num]
  end
  half_len += 1

  (half_len).upto(in_arr.size - 1) do |num|

    new_arr[1][num - half_len] = in_arr[num]
  end
  new_arr
end

def halvsies2(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([])

=begin
PROBLEM --------------------
input - an array
output - 1 array with 2 nested arrays that have the 1st and 2nd half of the OG
if the array is odd, more goes in the first array

EXAMPLES -------------------
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
DATA STRUCTURES ------------
just need a new array



ALGORITHM ------------------
create a variable for length of the array, divide by 2 and add 1
add each element of the array 0 - lenvar in slot 1
add the rest of the elements


=end