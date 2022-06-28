def swap(in_string)
  str_arr = in_string.split(' ')

  str_arr.each do |word|
    word[0], word[-1] = word[-1], word[0]
    #buf = word[0]
    #word[0] = word[-1]
    #word[-1] = buf
  end

  str_arr.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')
=begin
PROBLEM --------------------
input string of words separated by spaces(or not) swap the first and last 
letters of every word return a string
characters shouldn't matter

EXAMPLES -------------------
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

DATA STRUCTURES ------------
could easily split the strings into an array and perform the same swap on each word


ALGORITHM ------------------
split the words on spaces
on each word, 
  store the first letter
  set first letter = last letter
  set last letter = first letter
return the joined array 

=end