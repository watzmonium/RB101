puts "please write a word or many words"
in_string = gets.chomp

string_arr = in_string.split(//)
string_arr.delete_if { |x| x == ' '}
sum = string_arr.length

# sum = input.delete(' ').size

puts "there are #{sum} characters in \"#{in_string}\"."


