#given a non-empty string, see if it can be constructed from one of its substrings

def rep_sub_pat(str)
  len = str.length
  sub_ary = []

  0.upto(len - 1) do |start_idx|
    start_idx.upto(len - 1) do |end_idx|
      sub_ary << str[start_idx..end_idx]
    end
  end

  sub_ary.delete(str)

  sub_ary.each do |sub_str|
    return true if sub_str * (len/sub_str.length) == str
  end
  false
end

p rep_sub_pat('abab') == true
p rep_sub_pat('abaababaab') == true
p rep_sub_pat('aba') == false

=begin
PROBLEM --------------------
input - a string
output - a boolean value that represents whether or not the string can
        be constructed from a substring of itself

EXAMPLES -------------------
p rep_sub_pat('abaababaab') == true



DATA STRUCTURES ------------
an array of all substrings

ALGORITHM ------------------
store string length
create an array to use

1) get the substrings
  - iterate on the string from all indeceies for each length from idx + 0 to idx + n
    store those values in an array
    0.upto(len - 1) idx
      idx.upto(len - 1) sub_idx

2) iterate over each substring
  divide length of string by length of substring
  if the og string == substring * that number from above, return true

false




=end