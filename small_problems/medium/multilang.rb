require 'pry'

def minilang(in_str)
  command_ar = in_str.split(' ')
  #p command_ar
  register = 0
  stack = []
  command_ar.each do |word|
    case word
      when 'PUSH' then stack << register
      when 'ADD' then register += stack.pop 
      when 'SUB' then register -= stack.pop
      when 'MULT' then register *= stack.pop
      when 'DIV' then register /= stack.pop unless stack.last.zero?
      when 'MOD' then register = register % stack.pop
      when 'POP' then register = stack.pop
      when 'PRINT' then puts register
      else register = word.to_i
    end
  end
end

#minilang('PRINT')
# 0

#minilang('5 PUSH 3 MULT PRINT')
# 15

#minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

#minilang('5 PUSH POP PRINT')
# 5

#minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

=begin
PROBLEM --------------------
accept a string-based argument that manipulates data from a "stack"
and does various things with it



EXAMPLES -------------------
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)



DATA STRUCTURES ------------
cut the input into an array
iterate through the array and
use a case statement for each command



ALGORITHM ------------------


=end