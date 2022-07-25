hsh = { a: 1, b: 2, c:3 }

p hsh.assoc(:d)

p hsh.key(2)

p hsh.transform_values { |v| v * 10}

p hsh