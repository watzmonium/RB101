def float?(instring)
  /^-?\d+[.]\d+$/.match(instring)
end

pork = float?('3.45 hi')

if pork == nil
  puts "no"
else puts pork
end