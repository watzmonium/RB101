def tip(amnt, perc)
  perc = perc.fdiv(100)
  tip = (amnt * perc).round(2)
  amnt += tip
  tip = sprintf("%.2f", tip)
  amnt = sprintf("%.2f", amnt)
  puts "The tip is $#{tip}"
  puts "the bill is $#{amnt}"
end

print "What is the bill? "
tot = gets.to_f
puts ''
print "what is the percent? "
per = gets.to_f
puts ''
puts ''

tip(tot, per)


# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0