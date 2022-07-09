def sequence(number)
  return [0] if number.zero?
  num_ar = []
  if number.positive?
    1.upto(number) { |num| num_ar << num }
  else
    -1.downto(number) { |num| num_ar << num }
  end
  num_ar
end


def sequence2(number)
  number.positive? ? (1..number).to_a : (-1..number).to_a
  p (-1..5).to_a
end

p sequence(-5) 
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

=begin
PROBLEM --------------------
input - an int
output - an array of all numbers up to that int



EXAMPLES -------------------
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]



DATA STRUCTURES ------------




ALGORITHM ------------------





=end