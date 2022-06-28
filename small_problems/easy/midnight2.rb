HOURS_PER_DAY = 24
MIN_PER_HOUR = 60
MIN_PER_DAY = HOURS_PER_DAY * MIN_PER_HOUR

def hour_split(big_str)
  big_str.split(':').map(&:to_i)
end

def after_midnight(time_str)
  time_arr = hour_split(time_str)
  time_arr[0] *= MIN_PER_HOUR
  time_arr.sum < MIN_PER_DAY ? time_arr.sum : 0
end

def before_midnight(time_str)
  time_arr = hour_split(time_str)
  time_arr[0] *= MIN_PER_HOUR
  return 0 if time_arr.sum == MIN_PER_DAY || time_arr.sum == 0
  MIN_PER_DAY - time_arr.sum
end

p after_midnight('00:00')
p after_midnight('12:34')
p after_midnight('24:00')
p before_midnight('00:00')
p before_midnight('12:34')
p before_midnight('24:00')

=begin
PROBLEM --------------------
two methods that both take time in ##:## format (a string) and return how many
minutes either before or after midnight
the times can range from 00:00 to 24:00
The input is a string and the output is an integer that represents # of mins

EXAMPLES -------------------
00:00 => 0 both
after 12:34 => 754
before 12:34 => 686
24:00 => 0 both

DATA STRUCTURES ------------
I think it could be useful to have constants again, but otherwise, it's mostly
basic math and string manipulation
one way to do this could be to split the string into an array at the colon
ALGORITHM ------------------
take the string, split it into hours and minutes as intergers
multiply the hours by 60, and add it to the minutes.
if the minutes ever equal total mins in a day, return 0
=end