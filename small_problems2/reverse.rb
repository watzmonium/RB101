def reverse_sentence(str)
  str.split(' ').reverse.join(' ')
end

def reverse_words(str)
  str.split(' ').each { |word| word = word.reverse! if word.size > 4}.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS