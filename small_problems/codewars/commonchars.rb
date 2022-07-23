def common_chars(ary)
  let_hash = {}

  ary.each do |word|
    word.chars.each do |let|
      let_hash[let] = let_hash[let] == nil ? let_hash[let] = 1 : let_hash[let] += 1
    end
  end
  let_hash.each_with_object([]) do |(letter, times), arry|
    (times/ary.size).times { arry << letter} if times >= ary.size
  end
end

p common_chars(['bella', 'label', 'roller'])
=begin
PROBLEM --------------------
input - an arry of strings of only lowecase chars
output - an array of all characters that occur in all strings fed in

EXAMPLES -------------------

DATA STRUCTURES ------------
array of characters

ALGORITHM ------------------

1) declare an array for char
    add all characters to the array from the first string

  iterate over the rest of the strings
    if the count of character is 0, delete that
      if the count is > ary count, delete taht number of that letter
  
  return the array



=end