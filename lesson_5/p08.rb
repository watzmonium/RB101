# use the each method to output all vowels from the strings

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, array|
  array.each do |word|
    word.chars.each do |char|
      print /[aeiou]/.match(char)
    end
  end
end
puts ''
