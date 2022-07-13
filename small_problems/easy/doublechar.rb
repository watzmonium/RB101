def double_consonants(in_str)
  new_str = ''
  in_str.length.times do |char|
    if in_str[char].match(/[aeiou]/) || in_str[char].match(/[^A-Za-z]/)
      new_str << in_str[char]
    else
      new_str << in_str[char] << in_str[char]
    end
  end
  new_str
end

def double_consonants2(string)
  string.chars.inject('') do |sum, char|
    sum += char.match?(/[^aeiou\d\W]/) ? char * 2 : char
  end
end

p double_consonants2('String') == "SSttrrinngg"
p double_consonants("Hello-World!")  == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

=begin
PROBLEM --------------------
input - a string
output - a string where each character is doubled


EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------





=end