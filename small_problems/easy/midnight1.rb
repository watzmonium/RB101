# REDO THIS WITH A HASH STRUCTURE NEXT TIME
MIN_PER_HOUR = 60
HOURS_PER_DAY = 24
MIN_PER_DAY = HOURS_PER_DAY * MIN_PER_HOUR
CURRENT_DAY = 26

def time_of_day(number)
=begin
  while number < 0
    number += MIN_PER_DAY
  end
  number = number % MIN_PER_DAY
=end
  if number.negative?
    number /= -1
    days, minutes = number.divmod(MIN_PER_DAY)
    hours, mins = minutes.divmod(MIN_PER_HOUR)
    days /= -1
    days -= 1
    hours = HOURS_PER_DAY - hours - 1
    mins = MIN_PER_HOUR - mins
  else 
    days, minutes = number.divmod(MIN_PER_DAY)
    hours, mins = minutes.divmod(MIN_PER_HOUR)
  end
  t = Time.new(2022, 06, (CURRENT_DAY + days), hours, mins, 0)
  t.strftime("%A %H:%M")
=begin
  hours, minutes = number.divmod(MIN_PER_HOUR)
  hours = sprintf("%02d", hours)
  minutes = sprintf("%02d", minutes)
  # format('%02d:%02d', hours, minutes)
  "#{hours}:#{minutes}"
=end
end



p time_of_day(0) #00:00
p time_of_day(-3) #23:57
p time_of_day(35) # 00:35
p time_of_day(-1437) # 00:03
p time_of_day(3000) # 02:00
p time_of_day(800) # 13:20
p time_of_day(-4231) # 01:29

=begin
# p - input is any signed integer
#     output is a time of day formatted as a string "##:##"
      each single number represents 
      there are 1,440 minutes in a day, and the numbers should wrap
      even if it goes beyond that
# e - see above
# d - i don't think any complex data structures are needed, this is more
      of a math problem
# a - 
      if the number is above 1439, perform modulo 1440 on it and update value of 
      number to remainder
      if it's positive, add it to 0, if negative subtract it from 1440
      divmod 60 to figure out how many hours and then minutes
      print the formatted string (expland this)
=end