puts ">> okease enter an int greater than 0:"
pos_int = gets.chomp.to_i

puts ">> enter 's' to compute the sum, 'p' to compete the product."
operation = gets.chomp

puts 1.upto(pos_int).inject(:+) if operation == 's'
puts 1.upto(pos_int).inject(:*) if operation == 'p'