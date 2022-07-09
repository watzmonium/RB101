def multiply_list(array1, array2)
  return_arr = []
  array1.each_with_index do |number, index|
    return_arr << number * array2[index]
  end
  return_arr
end

def multiply_list2(array1, array2)
  return_arr = []
  array1 = array1.zip(array2)
  array1.each do |nums|
    return_arr << nums.inject(:*)
  end
  return_arr
end

def multiply_list3(arr1, arr2)
  arr1.zip(arr2).map { |pairs| pairs.inject(:*) }
end

p multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

=begin
PROBLEM --------------------
input - two arrays of only numbers
output - a new array that has the products for each index
assume ach list same number of numbers



EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------





=end