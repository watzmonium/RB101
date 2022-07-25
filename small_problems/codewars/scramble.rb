def scramble(str1, str2)
  str2.chars.all? { |letter| str2.count(letter) == str1.count(letter) }
end

p scramble('javaass', 'jjss') == false
p scramble('rkgodlw', 'world') == true

=begin
PROBLEM --------------------
input - 2 strings
output - boolean that represents if a portion of str1 chars can be rearranged to make str2

EXAMPLES -------------------

DATA STRUCTURES ------------




ALGORITHM ------------------
1) convert st2 to an array
  call all on it and see if str 1 includes it



=end