def fibonacci(cycles)
  fibs = 1
  sum = 1
  3.upto(cycles) do
    fibs, sum = [sum, fibs + sum]
  end
  sum
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
