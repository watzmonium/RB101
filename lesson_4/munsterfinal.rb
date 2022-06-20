munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# modify this hash so that each member has a new key age group thats adult if >18 and senior
# if over 65

munsters.each do | key,_ |
  if munsters[key]['age'] < 18
    munsters[key]['age_group'] = 'kid'
  elsif munsters[key]['age'] > 64
    munsters[key]['age_group'] = 'senior'
  else
    munsters[key]['age_group'] = 'adult'
  end
end

p munsters

munsters.each do |_, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end