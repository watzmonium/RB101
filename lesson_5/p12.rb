# WITHOUT using .to_h write code that retuns a hash where the key is first item
# in each sub array and the value is the second item

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

a_to_hsh = {}

arr.each do |subr|
  a_to_hsh[subr[0]] = subr[1]
end

p a_to_hsh