def multisum(num)
  (3..num).to_a.select { |x| x % 3 == 0 || x % 5 == 0}.sum
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)