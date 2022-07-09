def negative(number)
  return number / -1 if number > 0
  number
end

def negative(number)
  number > 0 ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

=begin
PROBLEM --------------------
input - an int
output - if the int is pos, the negative version, otherwise the same thing


EXAMPLES -------------------
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby



DATA STRUCTURES ------------




ALGORITHM ------------------





=end