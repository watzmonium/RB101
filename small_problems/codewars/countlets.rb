def letter_count(str)
  str.chars.each_with_object({}) do |char, hsh|
    if char.match(/[a-z]/)
      sym_char = char.to_sym
      hsh[sym_char] = hsh[sym_char] == nil ? hsh[sym_char] = 1 : hsh[sym_char] += 1
    end
  end
end

p letter_count('codewars')
p letter_count('arithmetics')


=begin
PROBLEM --------------------
input - string
output - a hash where the keys are lowercase letters, and the values are counts

issues - ignore a character if it's not lowercase


EXAMPLES -------------------


DATA STRUCTURES ------------
a hash



ALGORITHM ------------------
1) iterate over each character with object
  if the character is in the lowecase character group
    if the entry doesn't exist, make it 1, otherwise make it += 1





=end