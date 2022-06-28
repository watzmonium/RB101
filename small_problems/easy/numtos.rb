NUMHASH = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  if number == 0
    return '0'
  elsif number.positive?
    number.digits.reverse.join
  else
    number *= -1
    number.digits.reverse.join.prepend('-')
  end
end

p integer_to_string(-432)
p integer_to_string(0)
p integer_to_string(+5000)