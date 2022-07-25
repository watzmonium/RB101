a = %w(a b c)
p a[1].object_id
a[1] = '-'
p a[1].object_id