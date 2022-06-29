def fib_recurs(num1, num2, index, cycle)
  cycle += 1
  fib_num = num1 + num2
  unless fib_num.to_s.size == index
    cycle = fib_recurs(num2, fib_num, index, cycle)
  end
  return cycle
end

def find_fibonacci_index_by_length(in_num)
  fib_recurs(1, 1, in_num, 2)
end

p find_fibonacci_index_by_length(100)

=begin
PROBLEM --------------------
method that takes an integer as input that represents a step in the fibonnaci sequence
return output is the number of the first entry in the fibonnaci sequence that
has the number of digits specified by the input



EXAMPLES -------------------
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

DATA STRUCTURES ------------




ALGORITHM ------------------
fibonacci recursive


return when number.to_s.size == input

=end