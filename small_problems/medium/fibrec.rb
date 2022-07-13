def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

=begin
PROBLEM --------------------
write a recursive fibonnaci function
input - the number of iterations to do
output - the number of that place in the fibonacci sequence

EXAMPLES -------------------
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

DATA STRUCTURES ------------

ALGORITHM ------------------
if num < 3 return 1
sum = sum + (fibonacci(num))




=end