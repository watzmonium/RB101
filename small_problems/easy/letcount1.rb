def word_sizes(in_string)
  word_hash = Hash.new(0)

  in_string.split(' ').each { |word| word_hash[word.length] += 1 }

  word_hash
end

def word_sizes2(in_string)
  word_hash = Hash.new(0)

  in_string.split(' ').each do |word|
    
    word_hash[word.gsub(/[^A-Za-z]/, '').length] += 1
  end
  word_hash
end

p word_sizes2('Hey diddle diddle, the cat and the fiddle!')
=begin
PROBLEM --------------------
input - a string of words defined by any contiguous number of any characters separeted by spaces
output - a hash that shows how many words there are of each frequency



EXAMPLES -------------------
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

DATA STRUCTURES ------------
splitting words into an array using split is easy
a hash of integers with interger counts


ALGORITHM ------------------
establish a hash with a default value of 0
split the string on the spaces
take the length of each string and add 1 to it in the hash and then return in

PART 2
establish hash
split on spaces


=end