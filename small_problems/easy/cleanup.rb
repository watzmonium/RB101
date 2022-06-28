LETS = ('a'..'z').to_a

def cleanup(in_string)
  new_string = ''

  in_string.each_char do |char|
    if LETS.include?(char)
      new_string += char
    else
      new_string += ' ' unless new_string.end_with?(' ')
    end
  end
  new_string
end

def cleanup2(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

def cleanup3(string)
  string.tr_s('^a-z', ' ')
end

p cleanup("---what's my +*& line?")

=begin
PROBLEM --------------------
input is a string of all lowercase words and a bunch of other garbage
output is a string with all non a-z replaced by space UNLESS the spaces are multiples

EXAMPLES -------------------
cleanup("---what's my +*& line?") == ' what s my line '



DATA STRUCTURES ------------
use an array of a..z 

ALGORITHM ------------------
go through the whole string character by character (each char)
if the character is NOT in the array, replace it with a space, UNLESS a space is before it
string
=end