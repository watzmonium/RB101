a = 'pp  oooooaaaaa  o  pppp'

b = 'hello'
p a.squeeze('op ')

p a.gsub('o', 'a')

p b.casecmp?('Hello') # => true

p a.start_with?('p' * 2)

p a.delete_prefix('p' * 2)
# /w - all a-zA-Z0-9 and _

# /W everything else