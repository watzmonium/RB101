flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney = flintstones.to_a.flatten
barney.keep_if { |x| x == "Barney" || x == 2 }

p barney

p flintstones.assoc('Barney')