def repeats(in_str)
  squeeze_str = []
  in_str.chars.each_with_index do |char, idx|
    squeeze_str << char unless in_str[idx + 1] == char
  end

  squeeze_str.join('')
end


p repeats('bbbbbb') == 'b'
p repeats('wwooonndeerrfull woorrlldd') == 'wonderful world'