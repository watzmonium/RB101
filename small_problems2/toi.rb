# def string_to_integer(string)
#   ints = ('0'..'9').to_a
#   len = string.size - 1
#   sum = 0
#   string.chars.each_with_index do |num, idx|
#     sum += ints.index(num) * (10**(len - idx))
#   end
#   sum
# end

# def string_to_integer(string)
#   digits = ('0'..'9').to_a

#   string.chars.inject(0) do |num, char|
#     num = num * 10 + digits.index(char)
#   end
# end

# # def string_to_signed_integer(string)
# #   if string.start_with?('+')
# #     return string_to_integer(string[1..-1])
# #   elsif string.start_with?('-')
# #     return string_to_integer(string[1..-1]) * -1
# #   else
# #     return string_to_integer(string)
# #   end
# # end

# def string_to_signed_integer(string)
#   negative = true if string.start_with?("-")
#   string = string.delete("+-")

#   negative ? -string_to_integer(string) : string_to_integer(string)
# end

# def signed_integer_to_string(int)
#   return '0' if int == 0
#   ints = ('0'..'9').to_a
#   neg = int < 0 ? true : false
#   int *= -1 if neg
#   nint = ''
#   while int > 0 do
#     nint << ints[int % 10]
#     int /= 10
#   end
#   nint.reverse!
#   nint.prepend('+') unless neg
#   nint.prepend('-') if neg
#   nint

# end

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'

def ascii_value(string)
  string.chars.map { |let| let.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0