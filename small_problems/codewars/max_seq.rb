def max_sequence(num_arr)
  return 0 if num_arr.empty? || num_arr.all? { |num| num.negative? }

  running_sum = 0
  len = num_arr.size - 1
  num_arr.each_with_index do |num, idx|
    temp_sum = num
    (idx + 1).upto(len) do |sub_num|
      running_sum = temp_sum if temp_sum > running_sum
      temp_sum += num_arr[sub_num]
    end
    running_sum = temp_sum if temp_sum > running_sum
  end
  running_sum
end

def max_sequence2(num_arr)
  return 0 if num_arr.all? { |num| num < 0 }

  len = num_arr.size - 1
  subs = []
  0.upto(len) do |start_idx|
    (start_idx).upto(len) do |ed_idx|
      subs << num_arr[start_idx..ed_idx]
    end
  end
  subs.max_by { |sub_ar| sub_ar.sum }.sum
end

p max_sequence2([]) == 0
p max_sequence2([-31]) == 0
p max_sequence2([11]) == 11
p max_sequence2([-1, 2, -3, 4, -1, 2, 1, -5, 4]) == 6

=begin
PROBLEM --------------------
find the maximum sum of a contiguous sequence of ints in an array
input - an array of ints (pos and negative)
output - a single int that represents the max sum of a contiguous group of ints

if the array is empty or only contains negative numbers, return 0
if the array has no negative numbers, return the sum


EXAMPLES -------------------
p max_sequence([]) == 0
p max_sequence([-1, 2, -3, 4, -1, 2, 1, -5, 4]) == 6


DATA STRUCTURES ------------




ALGORITHM ------------------
if the array is empty or only contains negative numbers, return 0
if the array has no negative numbers, return the sum

1) create a running sum
2) iterate over the array
  find each sub-array
  if the sum is greater than the running sum, store it

return the running sum


=end