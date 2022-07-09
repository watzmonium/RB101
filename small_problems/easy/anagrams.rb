def anagrams(ary)
  anagram = []
  ary.each do |word|
    compword = word.chars.sort
    anagroup = []
    ary.each do |oword|
      anagroup << oword if compword == oword.chars.sort
    end
    anagram << anagroup
  end
  anagram.uniq.each do |group| 
    print group
    puts ''
  end
end

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams(words)

=begin
PROBLEM --------------------




EXAMPLES -------------------
["demo", "dome", "mode"]
["neon", "none"]
#(etc)



DATA STRUCTURES ------------




ALGORITHM ------------------





=end