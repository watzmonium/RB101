def balanced?(in_str)
  paren = in_str.chars.select do |char|
    char == '(' || char == ')'
  end
  lcount = 0
  rcount = 0
  paren.each_with_index do |char, idx|
    if char == '('
      next if paren[idx + 1] == ')'
      return false if paren[idx - 1] == ')' && lcount != rcount
      lcount += 1 
      
    elsif char == ')'
      rcount += 1 unless paren[idx - 1] == '('
    end

  end
  lcount == rcount
end

def balanced2?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

=begin
PROBLEM --------------------
input - a String
output - a boolean
parentheses must match normally in number and orientation



EXAMPLES -------------------
(()()())
((()))

DATA STRUCTURES ------------




ALGORITHM ------------------
remove everything except parentheses
go through each character
if ) and ( count == 0, return false
look for (
  if ) next
  if ( add to the count unless next index is )
look for )
    add to count 

if ( count == ) count return true 
return falsefalse
  
  

=end