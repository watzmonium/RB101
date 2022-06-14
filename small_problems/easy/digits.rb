def digit_list(number)
  newarr = number.to_s.split(//)
  newarr.map(&:to_i) # this syntactic sugar is { |x| x.to_i }
  # method(&:method) seems very powerful
end
p digit_list(12345)
p digit_list(12345) == [1,2,3,4,5]