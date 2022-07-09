def substrings(in_str)
  subs = []
  while in_str.length > 0 do
    in_str.length.times do |n|
      subs << in_str[0..n]
    end
    in_str.delete_prefix!(in_str[0])
  end
  subs
end

def palindromes(in_str)
  subs_arr = substrings(in_str)
  subs_arr.select { |string| string == string.reverse && string.size > 1 }
end

p palindromes('abcd')
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

=begin
PROBLEM --------------------
return all substrings that are palindromic



EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------





=end