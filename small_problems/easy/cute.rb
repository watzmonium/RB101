SYMBOLS = ["\xC2\xB0", "'", '"']
CIRCLE = 360
DEGREES = 60
def dms(number)
  deg_arr = []
  placenum = 1

  while number < 0
    if number > -CIRCLE
      number = CIRCLE + number
    else
      number = CIRCLE - (number * -1)
    end
  end

  number %= CIRCLE if number > CIRCLE
  deg_num = number
  
  while placenum < 4 do
    deg_arr << deg_num.to_s.split('.')
    deg_arr.flatten!
    if deg_arr[placenum].to_i == 0
      deg_num = '00.00'
    else
      deg_num = (deg_arr[placenum].prepend('.').to_f * DEGREES).round(2)
      deg_arr.pop
    end
    placenum += 1
  end
  
  3.times do |x|
    print '0' if deg_arr[x].size == 1
    print "#{deg_arr[x]}#{SYMBOLS[x]}"
  end
  puts ''
end

#dms(30.00)
dms(400)
dms(-40)
dms(-420) 
dms(0) 
dms(360)








=begin
PROBLEM --------------------
turn degrees and decimals into degrees, minutes and seconds
degrees go up to 360
input is a float
output is a formatted string as ##°##'##"
cut off the numbers before the decimal, then multiply the rest by 60.
EXAMPLES -------------------
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")

DATA STRUCTURES ------------
can use an array split on the decimal then do math on the rest



ALGORITHM ------------------
take the number, turn it into a string, and chop off the numbers before the decimal point
can use split on period can use slice with regex - anything up to a decimal
could cut off one char at a time until i hit a decimal place
regex seems like the best, split seems like the fastest
store that number as a string in an array
take the decimal stuff, multiply by 60, cut off everything before the decimal again
if the number is less than 10, prepend a 0
add that with a ' to the array
round the last bit and then add it to the array, prepend with 0 if less than 10
print formatted string
=end