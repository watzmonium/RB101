require 'date'

#a = Date.civil(2022, 8)


a = [1, 4, 8, 11, 15, 19]

p a.bsearch { |num| num > 8}
