# return an arry that only has the hashes where the ints are even

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = []

arr.select do |subh|
  mybool = true
  subh.each do |key, value|
    value.each do |num|
      mybool = false if num.odd?
    end
  end
  new_arr << subh if mybool
end

p new_arr