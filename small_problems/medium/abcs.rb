LET_PAIRS = %w(B:O X:K D:Q C:P N:A G:T R:E F:S J:W H:U V:I L:Y Z:M)

def initialize_hash
  hash = {}
  LET_PAIRS.each do |pair|
    hash[pair] = false
  end
  hash
end

def block_word?(in_str)
  pair_hash = initialize_hash
  in_str.upcase.each_char do |char|
    letter_pair = pair_hash.select { |key,_| key.include?(char) }.keys
    return false if letter_pair.empty?
    return false if pair_hash[letter_pair[0]] == true
    pair_hash[letter_pair[0]] = true
  end
  true
end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word2?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

=begin
PROBLEM --------------------
given these blocks:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
write a method that limits words that can be spelled to only those with these characters AND
if one of the pairs is used, you can't use the other character


EXAMPLES -------------------
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

DATA STRUCTURES ------------
hash - key is 2 char str 'BO' => false 



ALGORITHM ------------------
initialize the hash
go through the in string each character and compare the value to my keys
if any key includes that character
if true return false
else set the value to true

implicitly return true



=end