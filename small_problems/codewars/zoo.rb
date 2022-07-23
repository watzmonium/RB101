def find_num(numbers)
  half = numbers.size / 2
  if numbers.size < 2
    numbers.each_with_index do |num, idx|
      return (num - 1) unless num - (numbers[0] + idx) == 0
    end
    return numbers[-1] + 1
  end

  if numbers[half] != numbers[0] + half
    return find_num(numbers.slice(0...half))
  else
    return find_num(numbers.slice(half..-1))
  end

end

def find_missing_number(numbers)
  return 1 if numbers.empty?
  numbers = numbers.sort
  return 1 if numbers[0] != 1
  highest = numbers.size + 1
  return highest if numbers[-1] != highest
  
  find_num(numbers)

end

p find_missing_number([1, 2, 4])
=begin
PROBLEM --------------------
Write a function that takes a shuffled list of unique numbers from 1 
to n with one element missing (which can be any number including n). 
Return this missing number.

Note: huge lists will be tested.

EXAMPLES -------------------
[1, 3, 4]  =>  2
[1, 2, 3]  =>  4
[4, 2, 3]  =>  1

DATA STRUCTURES ------------
get the max number from the array
iteratate from 1..n 
if num != ary[num - 1] return array[num - 1]



ALGORITHM ------------------





=end