def extract_subs(str)
  len = str.length - 1
  sub_arry = []
  str.downcase.chars.each_with_index do |let, idx|
    (idx + 1).upto(len) do |sub_idx|
      sub_arry << str[idx..sub_idx].downcase
    end
  end
  sub_arry.uniq
end

def substring_test(str1, str2)
  subs_array = extract_subs(str1)
  subs_array2 = extract_subs(str2)

  subs_array.each do |word|
    subs_array2.each do |other_word|
      return true if word.casecmp?(other_word)
    end
  end
  false
end

p substring_test('something', 'fun') == false
p substring_test('something', 'home') == true
p substring_test('something', '') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', '111t') == false

=begin
PROBLEM --------------------
input - 2 strings
output - a boolean that represents whether or not there is a >1 character common substring between
        the two strings


EXAMPLES -------------------



DATA STRUCTURES ------------
an array for all substrings



ALGORITHM ------------------

1) declare an array to store all substrings

2) iterate through each string, and store the substrings in the array
  determine the index lenght of both substrings

  - chars.each_with_index to iterate through each substring
    - from index +1 to length  

compare each substring to each other, and return true if any of them ever match
  array.each 
    s1.casecmp(s2)


=end