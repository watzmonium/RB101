=begin
def running_total(num_arr)
  sum = 0
  num_arr.map { |x| sum += x}
end
=end

=begin  
def running_total(num_arr)
  sum = 0
  num_arr.each_with_object([]) do |obj, arr|
    sum += obj
    arr.push(sum)
  end
end
=end
def running_total(num_arr)
  new_arr = []
  num_arr.inject do |sum, number| 
    new_arr[new_arr.length] = sum + number
  end
  new_arr
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])