SQUARE_ORDER = 3

# step by 3 - increase the number by 3 each loop
# take 5 - do this 5 times total
#

# for (int i = 1; i < 25; i += 5)
1.step(by: 5, to: 5**2).each_with_object([]) do |row, array|
  row
  # i think you just need step here to use take
  array << row.step.take(3)
end

SQUARES = (1..10).to_a
p *SQUARES.count(2)
puts 