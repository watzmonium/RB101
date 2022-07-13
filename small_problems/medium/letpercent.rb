
def letter_percentages(in_str)
  len = in_str.length
  percents = {}
  percents[:lowercase] = in_str.count('a-z').fdiv(len)
  percents[:uppercase] = in_str.count('A-Z').fdiv(len)
  percents[:neither] = 1 - (percents[:uppercase] + percents[:lowercase])
  percents.transform_values { |v| (v * 100).round(1)}
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')

=begin
PROBLEM --------------------
input - a string
output - a hash with .1 accuracty of percentgages of uppercase, lowercase, and neither

EXAMPLES -------------------


DATA STRUCTURES ------------
a hash to store the stuff



ALGORITHM ------------------
get length of string
count number of lower float divided by length floor 1 and assign to hash
count number of upper float divided by length floor 1 and assign to hash
subtract those values float divided by length floor 1 and assign to hash
return hash




=end