def buy_fruit(list)
  fruit = []
  list.each do |fruits| 
    fruits[1].times { fruit << fruits[0]}
  end
  fruit
end

def buy_fruit2(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin
PROBLEM --------------------
input - a 2d array of fruits and numbers
output - an array with the number of fruits printed


EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------





=end