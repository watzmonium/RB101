NUMWORDS = %w(zero one two three four five six seven eight nine)
NUMBERS = ('0'..'9').to_a

def word_to_digit(in_str)
  str_ar = in_str.split(/(\W)/)
  str_ar.each_with_index do |word, idx|
    if NUMWORDS.include?(word.downcase)
      str_ar[idx] = NUMWORDS.index(word.downcase).to_s
    elsif word == ' ' && NUMBERS.include?(str_ar[idx - 1])
      str_ar[idx] = nil
    end
  end
  str_ar.compact.join
  #in_str[first..last].squeeze
end

def format_phone_number(string)
  string.gsub(/\d{10}/) do |num|
    "(#{num[0..2]})#{num[3..5]}-#{num[6..]}"
  end
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
split the string into an array.
gsub each entry with numwords
remember where you started and ended 
slice at start
sqeeze the slice
rejoin it to the array
return the array



=end