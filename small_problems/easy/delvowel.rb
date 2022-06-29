def remove_vowels(in_string)
  in_string.map do |word|
    word.delete('aeiouAEIOU')
    # .gsub!(/[AEIOUaeiou]/, '')
  end
end

p remove_vowels(%w(green YELLOW black white))

=begin
PROBLEM --------------------
take an array of strings and return the same array with all vowels removed
input is array of strings
output is an array of strings

EXAMPLES -------------------
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


DATA STRUCTURES ------------
seems like just the original array

ALGORITHM ------------------
iterate over each entry of the array via map
look at each letter in the string and delete it if it's a vowel
could just do delete(aeiou) ?


=end