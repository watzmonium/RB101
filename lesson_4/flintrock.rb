statement = "The Flintstones Rock"
# create a hash that shows letter frequency

letters = Hash.new(0)
loopnum = 0

while loopnum < statement.length
  letters[statement[loopnum]] += 1
  loopnum += 1
end

p letters

result = {}
another_letters = ('A'..'Z').to_a + ('a'..'z').to_a

another_letters.each do |letter|
  let_num = statement.count(letter)
  result[letter] = let_num if let_num > 0
end

p result