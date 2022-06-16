def xor?(x, y)
  if x
    y ? false : true
  elsif y
    x ? false : true
  else
    false
  end
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?)