require 'yaml'
require 'rpsmethods'
SYS_MSG = YAML.load_file('sys_msg.yml')
PICK_N_WIN = YAML.load_file('choices.yml')
WIN_NUM = 3



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
