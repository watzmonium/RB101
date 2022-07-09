def prompt(string)
  puts "=> #{string}"
end

def greetings(ary, hsh)
  prompt("Hello, #{ary.join(' ')}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around.")
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

=begin
PROBLEM --------------------
input - an array of first, middle, last and a hash of title and occupation
output - print to screen a greeting of the name and print their title


EXAMPLES -------------------
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.



DATA STRUCTURES ------------




ALGORITHM ------------------





=end