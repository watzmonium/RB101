def star(number)
  half = number / 2 - 1
  startop(half, 0)
  puts "#{'*' * number}"
  starbot(half, number) 
end

def startop(height, start)
  return if start > height
  startop(height, start + 1)
  puts "*#{' ' * start}*#{' ' * start}*".center((height + 2) * 2)
end

def starbot(height, start)
  return if height < 0
  starbot(height - 1, start)
  puts "*#{' ' * height}*#{' ' * height}*".center(start)
end

star(15)

=begin
PROBLEM --------------------
input an int
output a star with these parameters
n/2 - 1 'fingers' of 3 stars, each line has 1 more space between them
middle row with n number of stars
flipped top
7 total rows
EXAMPLES -------------------
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

DATA STRUCTURES ------------

ALGORITHM ------------------
get the half height
run the top star function with half height
print n number of stars
run the bottom half function

top half
  0 spaces
  recursive n + 1
  return if n == spaces
  print centered star + ' ' * n 

bottoom half
  return if n < 0
  recursive n - 1

=end