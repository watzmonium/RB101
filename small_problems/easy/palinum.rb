def palin_num?(in_num)
  new_num = in_num.to_s
  new_num == new_num.reverse
end

p palin_num?(34543)
p palin_num?(123210)
p palin_num?(22)
p palin_num?(5)