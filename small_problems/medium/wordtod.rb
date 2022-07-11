NUMWORDS = %w(zero one two three four five six seven eight nine)

def word_to_digit(in_str)
  in_str.downcase!
  NUMWORDS.each_with_index do |word, idx|
    in_str.gsub!(word, idx.to_s)
  end
  p in_str.split(' ').each
  in_str.capitalize!
end

p word_to_digit('Please call me at Five five five one two three four. Thanks.')# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=begin
PROBLEM --------------------
input - a string
output - the same string with any sequence of the words 'zero'..'nine'


EXAMPLES -------------------
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'



DATA STRUCTURES ------------
array words from 0 to 9



ALGORITHM ------------------
spli the string into an array
then go word by word of the numwords with index
if the word array has that word in it, switch the word for that index number
return the string



=end