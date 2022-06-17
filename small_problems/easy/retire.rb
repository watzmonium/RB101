require 'date'

print "What is your age? "
age = gets.chomp.to_i
print "At what age would you like to retire? "
retire_age = gets.chomp.to_i
puts ''
d = Date.today.year
# time.now.year
time_left = retire_age - age
puts "it's #{d}. You will retire in #{d + time_left}."
puts "you only have #{time_left} years of work to go!"
