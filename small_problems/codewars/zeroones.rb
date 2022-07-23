
def more_zeros(s)
  s.chars.uniq.each_with_object([]) do |char, ary|
    new_s = char.ord.to_s(2)
    ary << char if new_s.count('0') > new_s.count('1')
  end
end

def more_zeros2(s)
  s.chars.select { |c| c.ord.to_s(2).count('0') > c.ord.to_s(2).count('1') }.uniq
end


p more_zeros('abcd')
=begin
PROBLEM --------------------
Create a moreZeros function which will receive a string for input, 
and return an array containing only the characters from that string whose 
binary representation of its ASCII value consists of more zeros than ones.

You should remove any duplicate characters, keeping the first occurence 
of any such duplicates, so they are in the same order in the final array 
as they first appeared in the input string.

EXAMPLES -------------------

'abcde' === ["1100001", "1100010", "1100011", "1100100", "1100101"]
               True       True       False      True       False
                   
        --> ['a','b','d']
    
'DIGEST'--> ['D','I','E','T']

DATA STRUCTURES ------------




ALGORITHM ------------------
break string into unique chars and iterate over each
add the char to an array if 
  string ordinal value => to int base 2 to string 0 count > 3




=end