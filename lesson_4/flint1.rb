flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# turn this into a hash where names are keys and values are positions

flint_hash = {}

flintstones.each_with_index do | value, idx |
  flint_hash[value] = idx
end

p flint_hash  