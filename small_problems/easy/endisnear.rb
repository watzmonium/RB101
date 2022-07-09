def penultimate(sentence)
  sent_ar = sentence.split(' ')
  sent_ar[-2]
end

def middle_word(sentence)
  return nil if sentence.empty?
  sent_ar = sentence.split(' ')
  sent_mid = sent_ar.length / 2
  sent_ar[sent_mid]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p middle_word('Hello')
p middle_word('')
p middle_word('My name is')
p middle_word("my name is doug")

=begin
PROBLEM --------------------
input is a sentence
output is the next to last word 



EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------





=end