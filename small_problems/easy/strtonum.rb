def string_to_integer(in_str)
  tenpow = 0.1
  str_arr = in_str.reverse.chars
  str_arr.map! do |x|
    tenpow *= 10
    (x.ord - 48) * tenpow
  end
  str_arr.sum.floor
end

p string_to_integer('4321')

HEXTABLE ={
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

def hexadecimal_to_int(in_str)
  sum = 0
  tenpow = 1
  len = in_str.length - 1
  (len + 1).times do |x|
    sum += HEXTABLE[in_str[len - x].upcase] * tenpow
    tenpow *= 16
  end
  sum.floor
end

p hexadecimal_to_int('9f32')