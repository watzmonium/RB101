require 'yaml'
SYS_MSG = YAML.load_file('sys_msg.yml')
PICK_N_WIN = YAML.load_file('choices.yml')
WIN_NUM = 3

def game_over(win_hash)
  if win_hash[:wins] == WIN_NUM
    puts "You win! Final score: player #{win_hash[:wins]}, computer #{win_hash[:losses]}."
    return true
  elsif win_hash[:losses] == WIN_NUM
    puts "You lose! Final score: player #{win_hash[:wins]}, computer #{win_hash[:losses]}."
    return true
  end
  false
end

def determine_winner(player, computer)
  if player == computer
    'tie'
  elsif PICK_N_WIN[player]['beats'].include?(computer)
    'win'
  else
    'lose'
  end
end

def update_tallies(win_hash, situation)
  case situation
  when 'win'
    win_hash[:wins] += 1
  when 'lose'
    win_hash[:losses] += 1
  when 'tie'
    win_hash[:ties] += 1
  end
end

def game_intro
  puts message('welcome')
  prompt(message('instructions0'))
  inst_choice = gets.chomp.downcase
  instructions if inst_choice.start_with?('y')
  system('clear')
end

def welcome_back(game_stats)
  puts message('welcome_b')
  puts message('standings')
  game_stats.each { |key, value| print "#{key}: #{value} " }
  puts ''
end

def instructions
  puts message('instructions1')
  puts message('instructions2')
  puts message('pentagram')
  puts message('continue')
  gets
  system('clear')
end

def check_choice(user_choice)
  return true if PICK_N_WIN.keys.include?(user_choice)

  PICK_N_WIN.each do |letter, _|
    return true if PICK_N_WIN[letter]['word'].include?(user_choice)
  end
  false
end

def play_again
  prompt(message('again'))
  again = gets.chomp
  return true if again.downcase.start_with?('y')

  false
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
  if game_data[:played].zero?
    game_intro
  else
    welcome_back(game_data)
  end

  choice = nil
  loop do
    prompt(message('choose'))
    choice = gets.chomp.upcase
    # edge case
    choice = 'C' if choice == 'SCISSORS'
    break if check_choice(choice)

    puts message('valid')
  end

  computer_choice = PICK_N_WIN.keys.sample

  puts "You chose #{PICK_N_WIN[choice[0]]['word']}, "\
        "the computer chose #{PICK_N_WIN[computer_choice[0]]['word']}."

  result = determine_winner(choice[0], computer_choice[0])
  puts "You #{result}"
  update_tallies(game_data, result)

  game_data[:played] += 1

  win = game_over(game_data)
  game_data = { played: 0, wins: 0, losses: 0, ties: 0 } if win

  break unless play_again

  system('clear')
end
