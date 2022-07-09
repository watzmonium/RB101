def uppercase?(in_str)
  in_str.each_char do |let|
    return false if /[a-z]/.match?(let)
  end
  true
end

def uppercase2?(string)
  return false if string.match?(/[a-z]/)
  true
end

def uppercase3?(str)
  !(str =~ /[a-z]/)
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

=begin
PROBLEM --------------------
input - a string
output - a boolean


EXAMPLES -------------------
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

DATA STRUCTURES ------------
ALGORITHM ------------------
go through each character of the string
if a character is a lowercase character, return false
return true


=end