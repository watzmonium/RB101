def common_prefix(str_arr)
  return '' unless str_arr.all? { |word| word.start_with?(str_arr[0][0])}

  subs_arr = []
  str_arr.each do |word|
    len = word.length - 1
    0.upto(len) do |idx|
      subs_arr << word[0..idx]
    end
  end

  subs_arr.uniq.select do |word| 
    str_arr.all? { |words| words.start_with?(word) }
  end.max
end

p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'rabies']) == ''
p common_prefix(['throne', 'throne']) == 'throne'
p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'

=begin
PROBLEM --------------------
find the longest common prefix
return '' if it doesnt exist

input - array of strings
output - a string
EXAMPLES -------------------
p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'rabies']) == ''

DATA STRUCTURES ------------
an array for the substrings


ALGORITHM ------------------
return '' unless strings all start with arry[0].first

1) delcare subs arr
2) iterate over each string from 0 to length
  store each substring

3) select from that group of substrings values that all entries in the array start with
  return the longest one


=end