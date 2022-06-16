print "What is the bill? "
bill = gets.chomp.to_f
print "what is the tip percentage as a whole number? "
tip = gets.chomp.to_f
tip /= 100
tip_total = (bill * tip)
puts ''
print "the tip is $"
puts sprintf("%#.2f", tip_total)
print "the total is $"
puts sprintf("%#.2f", (tip_total + bill))