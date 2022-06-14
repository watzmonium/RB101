def stringy(num, first = 1)
  bin = []
  first = first.to_s
  
  second = '0' if first == '1'
  second = '1' if first == '0'
  num.times do |i|
    if i % 2 == 0
      bin.push(first) 
    else
      bin.push(second)
    end
  end
  bin.join('')
end

=begin
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

=end

p stringy(9)
