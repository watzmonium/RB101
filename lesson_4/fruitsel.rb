def select_fruit(prod_hash)
  return_hash = {}

  prod_hash.each do |k, v|
    return_hash[k] = v if v == 'Fruit'
  end
  return_hash 
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

=begin
# P - problem
i have to find the key-value pairs
input is a hash of fruits/veg with their classification
I need to return a hash that has JUST what I want

# E - examples and test cases
must hve a hash in the format given my produce

# D - data structures
I need to create a hash to store the new stuff with
I could create an array of the keys, but i think i can just select
given the stuff using ruby syntax

# Algorithm

create an empty hash

loop through the input hash using key, value
  where value is 'Fruit'
  store that key and value in my hash

return my hash

=end