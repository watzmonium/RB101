def triangle(a1, a2, a3)
  angles = [a1, a2, a3]

  return :invalid if angles.sum != 180 || angles.include?(0)

  max = angles.max
  return :obtuse if max > 90
  return :right if max == 90
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

=begin
PROBLEM --------------------
input - 3 ints
output - a symbol of triangle type or invalid

if sum of angles != 180 or any angles <= 0 :invalid
if any angle is 90 :right
if any angle is >90 :obtuse
else it's acute

EXAMPLES -------------------




DATA STRUCTURES ------------
store all angles in an Array
ALGORITHM ------------------
store angles in array
return invalid if there's a 0 or they dont = 180

do a case on the max angle
if it's greater than 90
  :obtuse
if 90
  :right
else
  :acute
=end