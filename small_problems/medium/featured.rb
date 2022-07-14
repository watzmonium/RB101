def featured(number)
  loop do
    break if number > 9_876_543_210
    number += 1
    count = 0
    if number.odd? && number % 7 == 0
      number_chars = number.to_s.chars
      return number if number_chars.uniq == number_chars
    end
  end
  "There is no number"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

=begin
PROBLEM --------------------
input - an integer
output - an integer that is the featured number
a featured number must be:
  divisible by 7, odd, and have no repeating digits
EXAMPLES -------------------

DATA STRUCTURES ------------

ALGORITHM ------------------
loop infinitely
  loop counter = 0
  add 1 to the number
  check if the number is odd and divisible by 7
    if so, check the count of each character in the number and if any are great than 1, continue
    otherwise, return that number
  break if the loop counter > 10,000,000
end of loop

=end