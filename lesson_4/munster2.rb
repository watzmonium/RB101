ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#remove people with age 100 and greater

ages.delete_if { |_, age| age > 99 }
# ages.keep_if { |_, v| v < 100 }
# ages.select! { |_, v| v < 100 } would return nil if no changes made though

p ages