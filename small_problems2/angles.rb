MIN_IN_DEG = 60
SEC_IN_MIN = 60

def change_unit(int)
  (int * 1.0).to_s.split('.').map do |num|
    num.to_f / 100
  end
end

def make_a_dec(int)
  int.to_s.prepend('.').to_f
end

def dms(int)
  degrees, minutes = change_unit(int)
  p minutes
  minutes = make_a_dec(minutes) * MIN_IN_DEG
  minutes, seconds = change_unit(minutes)
  seconds = make_a_dec(seconds) * SEC_IN_MIN
  p degrees, minutes, seconds

end

# dms(30) #== %(30°00'00")
# dms(76.73) #== %(76°43'48")
# dms(254.6) #== %(254°36'00")
dms(93.034773) #== %(93°02'05")
# dms(0)# == %(0°00'00")
# dms(360)# == %(360°00'00") || dms(360) == %(0°00'00")


=begin
PROBLEM --------------------
given an angle, convert it to degrees
input - an int
output a formatted string

EXAMPLES -------------------


DATA STRUCTURES ------------


ALGORITHM ------------------
convert int to string, and split on period
store that as degrees, minutes
multiply minutes by 60
divmod minutes by 60
i'm not sure

=end