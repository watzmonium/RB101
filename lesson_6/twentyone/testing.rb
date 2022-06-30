def user_input(continue, cage=false)
  loop do
    go = gets.chomp.downcase
    return go unless cage
    return go if continue.include?(go)
    puts "Sorry, that's not a valid input."
  end
end

user_input('pee')