MIN_HOUR = 60
HOUR_DAY = 24
MIN_DAY = MIN_HOUR * HOUR_DAY

def time_of_day(number)
  while number.abs > MIN_DAY
    number = number % MIN_DAY
  end
  number = MIN_DAY - number.abs if number < 0
  hours, minutes = number.divmod(MIN_HOUR)
  puts "#{sprintf("%.2d",hours)}:#{sprintf("%.2d",minutes)}"
end

def before_midnight(str)
  times = str.split(':').map(&:to_i)
  times = (MIN_DAY - ((times[0] * 60) + times[1]))
  return 0 if times == MIN_DAY
  times
end

def after_midnight(str)
  times = str.split(":").map(&:to_i)
  times = ((times[0] * 60) + times[1])
  return 0 if times == MIN_DAY
  times
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0


=begin
PROBLEM --------------------
input - number of minutes after midnight
output - the time

EXAMPLES -------------------

DATA STRUCTURES ------------




ALGORITHM ------------------
a constant for number of mins in an hour
a constant for number of hours in a day
a constant for mins in a day

loop while minutes > minutes in a day
  total day minutes

set mins to mins if pos if that is negative, subtract from total day mins

divmod hours to get hours and minutes

print hours : minutes with format



=end