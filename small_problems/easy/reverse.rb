def reverse_sentence(in_str)
  in_str.split.reverse.join(' ')
end

p reverse_sentence("Hello World!")