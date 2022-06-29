def reverse(in_arry)
  new_arr = []
  max = in_arry.length - 1

  while max >= 0
    new_arr.push(in_arry[max])
    max -= 1
  end
  new_arr
end

def reverse2(in_arry)
  new_arr = in_arry.each_with_object([]) do |item, ary|
    ary.unshift(item)
  end
  new_arr
end

def reverse3(in_arry)
  in_arry.inject([], :unshift)
end 

list = [1, 3, 2]
new_list = reverse3(list)     
p list.object_id != new_list.object_id
p list
p new_list
=begin
PROBLEM --------------------
input array
output a new object array reversed from the original

EXAMPLES -------------------
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true



DATA STRUCTURES ------------
still an array
ALGORITHM ------------------
go through each element of the array and add it to a new array
backwards



=end