def sequence(count, step)
  num_ar = []
  return [] if count == 0
  1.upto(count) { |num| num_ar << step * num }
  num_ar
end

def sequence2(count, first)
  (1..count).map { |value| value * first }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

=begin
PROBLEM --------------------




EXAMPLES -------------------
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
DATA STRUCTURES ------------




ALGORITHM ------------------





=end