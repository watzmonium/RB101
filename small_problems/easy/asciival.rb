def ascii_value(in_string)
  in_string.each_char(&:ord).sum
end

p ascii_value('Four score')

=begin
def ascii_value(in_string)
  in_string.each_char(&:ord).sum
  .chars.map(&:ord).sum
=end