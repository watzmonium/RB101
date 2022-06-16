times_arr = (1..99).to_a
times_arr.each do |x|
  puts x if x.odd?
end

1.upto(99) { |x| puts x if x.odd? }