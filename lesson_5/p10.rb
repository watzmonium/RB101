# return new array without modding, each int incrimented by 1

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hsh|
  hsh.transform_values { |v| v += 1 }
end

p new_arr
p arr