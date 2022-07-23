p %w'abc'.zip(%w'def')
a = [1, 2, 3]
b = [4, 5, 6]
c ={a: 1, b: 2}
p a.zip(c, b)

p 'hello'.chars.zip(a).flatten.compact