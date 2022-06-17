def oddities(array)
  new_arr = []
  array.each_with_index do |obj, idx|
    new_arr << obj if idx.even?
  end
  new_arr
end

def oddities2(array)
  new_arr = []
  (array.length).times do |x|
    new_arr << array[x] if x.even?
  end
  new_arr 
end 

p oddities(['abc', 'def'])
p oddities2(['abc', 'def'])