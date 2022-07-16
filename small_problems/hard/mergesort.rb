def merge!(ar1, ar2)
  new_arr = []

  loop do
    if ar1.empty?
      break if ar2.empty?
      new_arr << ar2.shift
    elsif ar2.empty?
      new_arr << ar1.shift
    else
      new_arr << ar1.shift if ar1.first < ar2.first
      new_arr << ar2.shift if ar1.first > ar2.first
    end
  end
  new_arr
end

def merge(ar1, ar2)

  return ar2 if ar1.empty?
  return ar1 if ar2.empty?
  new_arr = []
  start = 0
  max = ar2.size
  ar1.each do |number|
    while start < max && ar2[start] <= number
      new_arr << ar2[start]
      start += 1
    end
    new_arr << number
  end

  new_arr.concat(ar2[start..-1]).compact
end

def merge_sort(arr)
  size = arr.size
  return arr if size == 1
  size /= 2

  left = merge_sort(arr[0...size])
  right = merge_sort(arr[size..-1])

  merge(left, right)
end

# If anyone ever reads this, this is not a good way to solve this problem.
# and I wasted a long time on this solution
def merge_sort2(arr)
  new_arr = []
  arr.each { |sub_ar| new_arr << [sub_ar] }
  
  place_count = 0
  temp_arr = []
  while new_arr[0].size < arr.size
    while !new_arr.empty?
      if new_arr.size == 1
        temp_arr << new_arr[0]
        new_arr.shift
        break
      else
        temp_arr << merge(new_arr[0], new_arr[1])
        new_arr.shift(2)
      end
    end
    new_arr = temp_arr
  end

  new_arr[0]
end




p merge_sort2([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort2([5, 3]) == [3, 5]
p merge_sort2([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort2(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort2([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]


=begin
PROBLEM --------------------




EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------
figure out the size of the array
return number if size == 1
left = merge_sort(left half)
right = merge_sort(right half)
merge left and right






=end