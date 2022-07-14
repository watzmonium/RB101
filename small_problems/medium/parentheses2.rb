PAIRS = {
  '(' => ')',
  '[' => ']',
  '{' => '}',
  '“' => '”',
  "'" => "'"
}

def balanced?(in_str)
  balance = 0
  PAIRS.each do |left, right|
    in_str.chars.each do |char|
      balance += 1 if char == left
      balance -= 1 if char == right
      return false if balance < 0
    end
  end
  balance.zero?
end

p balanced?('What [is] this?') == true
p balanced?('What is] this?') == false
p balanced?('What “is this?') == false
p balanced?('({What} (is this))?') == true
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false