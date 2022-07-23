a_hash = [1, 1, 1, 2, 3, 4, 5, 5, 9, 12]

#p a_hash.tally

board = [ [3, 0, 1],
          [3, 0, 1],
          [0, 2, 1], 
          [0, 2, 0] ]

counts = {}
board.each do |ary|
  counts = counts.merge(ary.tally) { |k, val1, val2| val1 + val2 }
end

p counts

# TALLY RETURNS A HASH OF THE COLLECTION ITEMS AND THEIR FREQUENCIES AS K/V