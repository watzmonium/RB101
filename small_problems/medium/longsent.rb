text = File.read('pg84.txt')
sentences = text.split(/\.|\?|!/)

def longest(sent_arr)
  long = 0
  bigsent = ''
  sent_arr.each do |sent|
    cur = sent.split(' ').size
    long = cur if cur > long
    bigsent = sent if cur == long
  end
  puts "#{bigsent}."
  long
end

p longest(sentences)

=begin
PROBLEM --------------------
input - a book
output - the number of words in the longest sentence



EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------





=end