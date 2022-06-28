WORD_NUMS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
              6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
              12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
              17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }


def alphabetic_number_sort(int_arry)
  word_arry = int_arry.map { |number| number = WORD_NUMS[number] }

  word_arry.sort.map { |word| word = WORD_NUMS.key(word) }
end

def alphabetic_number_sort2(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a)
=begin
PROBLEM --------------------
input - an array of integers 1-19
output - a sorted array by the spelled english word for each number



EXAMPLES -------------------
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0

DATA STRUCTURES ------------
hash structure for the key-values for numebrs and words
array to return


ALGORITHM ------------------
set the values of the array equal to the values from the hash
sort the array alphabetically
set the values of the array equal to the keys from the hash

=end