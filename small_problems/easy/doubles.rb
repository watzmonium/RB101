def twice(number)
  snum = number.to_s
  if snum.size.even? 
    mid = snum.size / 2
    return number if snum[0..(mid - 1)] == snum[mid..-1]
  end
  number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

=begin
PROBLEM --------------------
input - an int
output - if the int is even AND first half == second half
else, multiply the number by two

EXAMPLES -------------------
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10



DATA STRUCTURES ------------


ALGORITHM ------------------
check if the number is even 
if yes, turn the number into a string and slice from len/2 to -1
compare the first half to the second half and if they're the same, return them
return the doubled number


=end