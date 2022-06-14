vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurances(array)
  itera = Hash.new
  array.each do |x|
    if itera.include?(x)
      itera[x] += 1
    else
      itera[x] = 1
    end
  end
  itera
end

=begin
def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
=end

p count_occurances(vehicles)