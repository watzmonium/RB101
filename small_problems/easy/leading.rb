def leading_substrings(in_str)
  subs = []
  in_str.length.times do |num|
    subs << in_str[0..num]
  end
  subs
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=begin
PROBLEM --------------------
input - a string
output - a list of all substrings that start from the beg


EXAMPLES -------------------
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
DATA STRUCTURES ------------
an array to store substrings



ALGORITHM ------------------
take the first x letters from the string and add to the array




=end