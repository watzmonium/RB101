def sum_square_difference(number)
  num_arr = []
  1.upto(number) do |num|
    num_arr << num
  end
  sumsq = num_arr.inject(:+) ** 2
  sqsum = num_arr.inject { |sum, num| sum += num**2 }
  sumsq - sqsum
end

def sum_square_difference2(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

=begin
PROBLEM --------------------
input - an Integer
output - an integer
find the square of the sum of all ints up to n
find the sum of the square of all ints up to n 
subtract them
EXAMPLES -------------------

DATA STRUCTURES ------------
make an array of all of the ints up to that number
ALGORITHM ------------------
make the array of numbers
sum the numbers and square that
square the numbers and add them


=end