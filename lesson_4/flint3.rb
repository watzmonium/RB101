flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# amend this array so the names are shortened to first 3 chars
flintstones.map! { |name| name = name[0, 3] }

p flintstones