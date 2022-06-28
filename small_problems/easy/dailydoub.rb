def crunch(in_string)
  crunch_string = ''
  in_string.each_char do |char|
    crunch_string += char unless crunch_string.end_with?(char)
    #crunch_string.last
  end
  crunch_string
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')

=begin
PROBLEM --------------------
input is a stringof any characters
output is a string with no consecutive repeats
a double character should only be removed if it is immediately preceeded by one

EXAMPLES -------------------
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

DATA STRUCTURES ------------
a string to write the new string as it goes should be good?

ALGORITHM ------------------
go through each character of the string and then compare it to the last char
of the new string
if the last char of the string is the same as this char, don't add it
return the string

=end