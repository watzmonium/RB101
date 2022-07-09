# debugging with pry

need to "require" pry as a library

binding.pry to access the program while it's running
  bindings contain references to any variables in scope where it's running

'exit' during debugging seems to increment loops
'exit!' ends the debugging

'whereami' shows you where you are in the program

pry-byebug - extends pry with additional commands
next, step (into), continue

pry is a REPL (read evalue print loop)

loop do
  p eval gets
end

 ^^ basically irb

 pry can cd to different classes
 pry> cd arr
 pry(array)> ls 
  this gives all class methods!

pry(array)> show-doc (method name)