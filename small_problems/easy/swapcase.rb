def swapcase(in_string)
  new_str = ''
  in_string.each_char do |char|
    if char =~ /[a-z]/
      new_str << char.upcase
    elsif char =~ /[A-Z]/
      new_str << char.downcase
    else
      new_str << char
    end
  end
  new_str
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

=begin
PROBLEM --------------------




EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------





=end