def triangle(s1, s2, s3)
  tri_ar = [s1, s2, s3]
  max = tri_ar.max

  return :invalid if tri_ar.include?(0)
  return :invalid if tri_ar.sum - max < max

  side_count = 0
  tri_ar.each do |side|
    cur_count = tri_ar.count(side)
    side_count = cur_count if cur_count > side_count
  end
  
  case side_count
  when 3 then return :equilateral
  when 2 then return :isosceles
  else return :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

=begin
PROBLEM --------------------
input - 3 ints
output - a symbol of triangle type or of invalid

check if it is valid triangle
 - no 0 length sides
 - the longest side is shorter than the other 2 added together

 equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
EXAMPLES -------------------
DATA STRUCTURES ------------
put the sides in an array to check some features



ALGORITHM ------------------
first put all sides in an Array
false if any are 0
false if small 2 < largest

count each value and store the max
if 3, return eq
if 2 return isosceles
else scalene
=end