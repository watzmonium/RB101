flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# find the index of the name that starts with 'Be'

flintstones.each_with_index do | name, idx |
  if name[0..1].include?('Be')
    puts idx
    break
  end
end

# flintstones.index { |name| name[0, 2] == "Be" }