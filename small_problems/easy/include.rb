def include?(in_arr, val)
  in_arr.each { |item| return true if item == val}
  false
end

p include?([], nil)

=begin
PROBLEM --------------------
input is an array and a search value (int)
output is a boolean if the value is in there
cant use include lol

EXAMPLES -------------------
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
DATA STRUCTURES ------------
i dont think it's needed



ALGORITHM ------------------
go through each entry and return true if you find the index



=end