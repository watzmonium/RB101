ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# add up all of the ages
sum = 0

ages.each { |_,v| sum += v}
# dont forget inject!
p sum
