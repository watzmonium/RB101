# build a command line calculator that asks for 2 numbers
# asks for the operation to be performed (a, s, m, d)
# displays the result

# I've done this is C, so this should be trivial, I will try to use PEDAC

# problem - should input 2 ints and then do math on them to output an int or float

# pseudocode
=begin
twice
  prompt user for integer
  check if it's valid
  re-prompt if invalid

  prompt user for operation type with input sanitization
  case for if one of the numbers is 0
  re-prompt if invalid

display result

=end

# Examples  - 1, 1 - any operation, 0 can be accepted but the user should not be
#             given the option to divide if 0 is given as the second number

math_nums = []

def prompt(message)
  puts("=> #{message}")
end

def valid_num(which_num)
  loop do
    puts prompt("Please enter your #{which_num} valid number")
    num = gets.chomp

    return num.to_f if num.to_f.to_s == num

    return num.to_i if num.to_i.to_s == num

    puts "that doesn't look like a valid number"
  end
end

def add(array)
  result = array[0] + array[1]
  puts "#{array[0]} + #{array[1]} = #{result}."
end

def subtract(array)
  result = array[0] - array[1]
  puts "#{array[0]} - #{array[1]} = #{result}"
end

def multiply(array)
  result = array[0] * array[1]
  puts "#{array[0]} * #{array[1]} = #{result}"
end

def divide(array)
  result = array[0].to_f / array[1]
  puts "#{array[0]} / #{array[1]} = #{result}"
end

loop do

  # prompt user for two numbers
  math_nums[0] = valid_num('first')
  math_nums[1] = valid_num('second')

  # get operation from user and call correct function
  loop do
    choice = nil
    loop do
      puts 'please select an operation:'
      if math_nums[1].zero?
        puts prompt('add, subtract, multiply')
      else
        puts prompt('add, subtract, multiply, divide')
      end

      choice = gets.chomp.downcase
      if %w(add subtract multiply divide).include?(choice)
        break
      else
        puts 'invalid entry'
      end
    end

    case choice
    when 'add'
      add(math_nums)
      break
    when 'subtract'
      subtract(math_nums)
      break
    when 'multiply'
      multiply(math_nums)
      break
    when 'divide'
      next if math_nums[1].zero?

      divide(math_nums)
      break
    end

  end

  prompt('Do you want to do another calculation? (y to do another)')
  restart = gets.chomp
  break unless restart.downcase.start_with?('y')
end
