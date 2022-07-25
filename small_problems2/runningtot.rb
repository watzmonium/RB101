def running_total(ary)
  #ary.each_with_object([]) { |num, nary| nary << num + nary.last rescue nary << num }
  ary.map.with_index do |n, idx|
    ary[0..idx].inject(:+)
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []