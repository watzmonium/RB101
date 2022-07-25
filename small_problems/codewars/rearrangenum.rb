def next_bigger_num(number)
  num_choices = number.to_s.split(//)
  return -1 if num_choices.size < 2
  num_choices = num_choices.permutation(number.size).to_a

  num_choices.map! { |ary| ary.join.to_i }

  num_choices.keep_if {|num| num > number}
  return -1 if num_choices.size == 0
  num_choices.min
end

def next_bigger_num2(number)
  max_num = number.digits.join.to_i
  (number + 1).upto(max_num) do |num|
    return num if num_sort(number, num)
  end
  -1
end

def num_sort(number, new_num)
  number.to_s.chars.sort == new_num.to_s.chars.sort
end

p next_bigger_num2(9) == -1
p next_bigger_num2(12) == 21
p next_bigger_num2(531) == -1

=begin
PROBLEM --------------------
input - an integer
output - an integer either -1 or rerranged digits from the original int that is larger than original

EXAMPLES -------------------
DATA STRUCTURES ------------
arrary to store the different possibilities
ALGORITHM ------------------

easy way - use permutations to find the combinations, and find the min that is also greater than number





=end