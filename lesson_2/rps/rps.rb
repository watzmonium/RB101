require 'yaml'
VICTORY_HASH = YAML.load_file('matrix.yml')
SYS_MSG = YAML.load_file('sys_msg.yml')

VALID_CHOICES = %w(r p c s l).freeze

def game_over(arr)
  if arr[:wins] == 3
    puts "You win! Final score: player #{arr[:wins]}, computer #{arr[:losses]}."
    exit(0)
  elsif arr[:losses] == 3
    puts "You lose! Final score: player #{arr[:wins]}, computer #{arr[:losses]}."
    exit(0)
  end
end

def update_tallies(arr, situation)
  case situation
  when 'win'
    arr[:wins] += 1
  when 'lose'
    arr[:losses] += 1
  when 'tie'
    arr[:ties] += 1
  end
end

def instructions
  puts message('instructions1')
  puts message('instructions2')
  puts message('pentagram')
  puts message('continue')
  gets
  system('clear')
end

def message(type)
  SYS_MSG[type]
end

def prompt(message)
  puts("=> #{message}")
end

game_data = { played: 0, wins: 0, losses: 0, ties: 0 }

# main game loop
loop do
  # if this is the first loop, the game asks the player if they want instructions
  if game_data[:played].zero?
    puts message('welcome')
    prompt(message('instructions0'))
    inst_choice = gets.chomp.downcase
    instructions if inst_choice.start_with?('y')

  # if second or later, the game assumes the player knows how to play and shows standings
  else
    puts message('welcome_b')
    puts message('standings')
    game_data.each { |key, value| print "#{key}: #{value} " }
    puts ''
  end

  # initialize scope for choice and the get a choice and see if it matches the array
  choice = nil
  loop do
    prompt(message('choose'))
    choice = gets.chomp.downcase

    break if VALID_CHOICES.include?(choice)

    puts message('valid')
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose #{choice.upcase}, the computer chose #{computer_choice.upcase}."
  # accsess the hash matrix to determine the result
  result = VICTORY_HASH[choice][computer_choice]
  puts "You #{result}"

  update_tallies(game_data, result)

  game_data[:played] += 1

  # check if anyone has 3 wins
  game_over(game_data)

  # ask if user wants to continue
  prompt(message('again'))
  again = gets.chomp
  break unless again.downcase.start_with?('y')

  system('clear')
end
