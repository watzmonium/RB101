
def rotate_rightmost_digits(number, rotation)
  num_ar = number.to_s.chars
  num_ar << num_ar.delete_at(rotation)
  num_ar.join('')
end

def max_rotation(number)
  len = number.to_s.size
  0.upto(len - 1) do |num| 
    number = rotate_rightmost_digits(number, num)
  end
  number.to_i
end
# num_ar[-rotation..-1]

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35)  == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
=begin
PROBLEM --------------------
input - an integer to be rotated, and the index of the number to shift to he end
output - the integer modified by the shift number

EXAMPLES -------------------

DATA STRUCTURES ------------

ALGORITHM ------------------
turn the number to a string and then an array of characters
delete the number at the -index given and append it to the end
join the array and conver to int and return it

rotate the first digit, then again
then rotate the third digit
then the 4th digit


=end