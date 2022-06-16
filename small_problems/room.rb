puts 'Room length: '
length = gets.chomp.to_i
puts 'Room width: '
width = gets.chomp.to_i

sqmt = length * width.to_f
puts "The area of the room is #{sqmt} square meters (#{(sqmt * 10.7639).round(2)} sq feet)."