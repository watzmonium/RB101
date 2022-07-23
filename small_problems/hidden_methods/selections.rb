a = [1, 2, 3, 4, 'a', 'b', 'c']
p a.reject {|n| n.to_i ==  0}

b = '0001010'
p b.chars.drop_while { |n| n == '0'}.join
# drop the first n characters that the block is true for