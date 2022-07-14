require 'date'

def friday_13th(year)
  fcount = 0
  1.upto(12) do |month|
    fcount += 1 if Date.new(year, month, 13).friday?
  end
  fcount
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

=begin
PROBLEM --------------------
input - an int (year)
output - an int (number of F13s)
assume year > 1752


EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------
establish a new date at the year in question
pass in months from 1-12
check if the 13th of that month is a friday


=end