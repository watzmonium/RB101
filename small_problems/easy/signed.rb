NUMHASH = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}

def string_to_int(in_string)
  string_ar = in_string.chars.map { |num| NUMHASH[num] }
  loopnum = 0
  max_arr = string_ar.length - 1
  while loopnum <= max_arr
    string_ar[max_arr - loopnum] *= (10**loopnum)
    loopnum += 1
  end
  string_ar.sum
end

def string_to_signed_int(in_string)
  result = string_to_int(in_string.delete('^0-9'))
  in_string[0] == '-' ? -result : result
end

p string_to_signed_int('-143321')

