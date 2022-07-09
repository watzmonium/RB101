def substrings(in_str)
  subs = []
  while in_str.length > 0 do
    in_str.length.times do |n|
      subs << in_str[0..n]
    end
    in_str.delete_prefix!(in_str[0])
  end
  subs
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=begin
PROBLEM --------------------
given a string, return all sequential, contiguous substrings from that string
from n to 1

EXAMPLES -------------------
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

DATA STRUCTURES ------------
store in an array

ALGORITHM ------------------
 while string length > 0
 iterate through the string the number of times = to strlen
 each time access 0 to n elements and add them to the array
 shift the first char off

=end