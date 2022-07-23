require 'pry'

def update_hash(ships, hits, counts)
  if ships - hits == 0
    counts['sunk'] += 1 
    counts['points'] += 1
  else
    counts['damaged'] += 1
    counts['points'] += 0.5 
  end
  counts
end

def damaged_or_sunk (board, attacks)
  # { 'sunk': 0, 'damaged': 2 , 'not_touched': 1, 'points': 0 }
  counts = {}
  board.each do |ary|
    ary.each do |num|
      counts[num] == nil ? counts[num] = 1 : counts[num] += 1
    end
  end
  
  y = board.size
  hit_counts = {}
  attacks.each do |ary|
    attack = board[y - ary[1]][ary[0] - 1]
    if hit_counts[attack] == nil
      hit_counts[attack] = 1
    else
      hit_counts[attack] += 1
    end
  end
  p hit_counts
  results = { 'sunk' => 0, 'damaged' => 0 , 'not_touched' => 0, 'points' => 0 }
  counts.each_key do |key|
    next if key == 0
    if hit_counts.has_key?(key)
      update_hash(counts[key], hit_counts[key], results)
    else
      results['not_touched'] += 1
      results['points'] -= 1
    end
  end
  results    
end

=begin
p input a large array of arrays (board), another array of arrays (attacks)
  output - a sentence about game results with a hash in it

a - 
=end

board = [ [3, 0, 1],
          [3, 0, 1],
          [0, 2, 1], 
          [0, 2, 0] ]

attacks = [[2, 1], [2, 2], [ 3, 2], [3, 3]]
p damaged_or_sunk(board, attacks)

=begin
p input a large array of arrays (board), another array of arrays (attacks)
  output - a sentence about game results with a hash in it

a - 
=end