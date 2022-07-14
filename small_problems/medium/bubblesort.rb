def bubble_sort!(in_arr)
  startnum = in_arr.size
  
  while startnum > 1 do
    fin_num = 0
    startnum.times do |idx|
      if (in_arr[idx + 1] <=> in_arr[idx]) == -1
        in_arr[idx], in_arr[idx + 1] = in_arr[idx + 1], in_arr[idx]
        fin_num = idx
      end
    end
    startnum -= (startnum - fin_num)
  end
  in_arr
end

p bubble_sort!([5, 3]) == [3, 5]
p bubble_sort!([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array 

=begin
PROBLEM --------------------
input - an array of values
output - a sorted array


EXAMPLES -------------------




DATA STRUCTURES ------------
same array



ALGORITHM ------------------





=end