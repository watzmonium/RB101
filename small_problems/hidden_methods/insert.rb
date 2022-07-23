a = [1, 2, 3, 4]
b = 0
a.each_with_index { |n, idx| b = idx if n == 3 }
a.insert(b, 2.5)
p a

# INSERT INSERTS BEFORE the index
# INSERT(INDEX, THING)
# INSERT(INDEX, THING)