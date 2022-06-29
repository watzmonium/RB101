def triangle(n, s=0)
  return if n == 0
  mario(n-1, s+1)
  puts "#{' ' * s}#{'*' * n}"
end

def upside_down(n, s=0)
  return if n == 0
  upside_down(n-1, s+1)
  puts "#{' ' * n}#{'*' * s}"
end

def left(n, s=0)
  return if n == 0
  left(n-1, s+1)
  puts "#{'*' * n}#{' ' * s}"
end

def up_left(n, s=0)
  return if n == 0
  up_left(n-1, s+1)
  puts "#{'*' * s}#{' ' * n}"
end

up_left(9)