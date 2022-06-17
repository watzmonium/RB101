def titleize(in_string)
  chop_str = in_string.split(' ')
  chop_str.map! { |word| word.capitalize}
  chop_str.join(' ')
  # in_string.split.map { |word| word.capitalize}.join(' ')
end

words = "the flintstones rock"

p titleize(words)