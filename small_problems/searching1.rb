def number?(input)
  /^\d+?(\.\d+)?$/.match(input) && !input.empty?
end

keys = %w(1st 2nd 3rd 4th 5th last)
num_ar = []

6.times do |x|
  puts "Enter the #{keys[x]} number"
  an_num = gets.chomp
  number?(an_num) ? num_ar.push(an_num) : redo
end

print "the number #{num_ar[5]} "
unless num_ar[(0..4)].include?(num_ar[5])
  puts "does not appear in #{num_ar[(0..4)]}."
else
  puts "appears in #{num_ar[(0..4)]}"
end
