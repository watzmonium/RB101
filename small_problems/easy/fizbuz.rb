def fizzbuzz(st_num, ed_num)
  st_num.upto(ed_num) do |num|
    fizz = num % 3 == 0 ? true : false
    buzz = num % 5 == 0 ? true : false
    print num unless fizz || buzz
    print 'Fizz' if fizz
    print 'Buzz' if buzz
    print ', ' unless num == ed_num
  end
  puts ''
end

fizzbuzz(1, 15)

=begin
PROBLEM --------------------
print out all numbers between starting and ending 
except if a number is divisible by 3, print fizz
and if a number is divisible by 5, print buzz 
if a number is divisible by both 3 and 5, print FizzBuzz
EXAMPLES -------------------
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
DATA STRUCTURES ------------
don't need a data structure here, just the print function

ALGORITHM ------------------
loop from start num up to end num
for each number, check 3, set fizz to t/f
  check 5, set buzz to tf
  unless fizz and buzz, print num
  if fizz, print fizz
  if buzz print buzz
  print comma space




=end