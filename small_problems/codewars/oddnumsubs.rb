# https://www.codewars.com/kata/59da47fa27ee00a8b90000b4/train/ruby

def solve(s) 
  len = s.size
  sub_arr = []

  len.times do |idx|
    n = idx
    while n < len
      sub_arr << s[idx..n]
      n += 1
    end
  end
  
  sub_arr.select { |num| num.to_i.odd? }.size
end


p solve("1341") == 7
=begin
PROBLEM --------------------
input - a string of ints
output - a single int that represents the number of substrings of that original string that are odd numbers
EXAMPLES -------------------
p solve("1341") == 7

DATA STRUCTURES ------------
array to store the substrings i find

ALGORITHM ------------------
for each index in the string
  store the number of characters from idx-n (n needs to be the same as starting value), where n increases up to max str length

select from that array calling each string to an int and calling odd? and then size




=end