def reverse_words(in_string)
  arr = in_string.split(' ')
  arr.map do |word|
    word.reverse! if word.length > 4 
    end
  arr.join(' ')
end

p reverse_words("Walk around the block")