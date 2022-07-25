def count_occurrences(ary)
  cars = ary.each_with_object(Hash.new(0)) { |word, hsh| hsh[word.downcase] += 1 }
  cars.each { |car, number| puts "#{car} => #{number}"}
end

vehicles = [
  'car', 'Car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)