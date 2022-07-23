ary = ['a', 'apple', 'abraaaaaaaa', 'zebra', 'zazoooooo', 'apzoooo']

p ary.max(3) { |a, b| a.size <=> b.size }
# ["zebra", "apple", "abra"]
p ary.max(3) { |a, b| b.size <=> a.size }
# ["a", "abra", "apple"]
p ary.max(3) { |a, b| b <=> a }