def center_of(in_str)
  mid = in_str.size
  mid2 = mid / 2
  if mid % 2 == 0
    return in_str[(mid2 - 1)..mid2]
  else
    return in_str[mid2]
  end
end

string[half - 1, 2]

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'