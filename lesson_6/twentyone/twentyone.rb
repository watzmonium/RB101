require './assets.rb'
require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('messages.yml')

def display_intro(spaces=0)
  return if spaces == WINDOW_MAX
  display_intro(spaces + 1)
  TITLE_SCREEN.each { |line| puts "#{' ' * spaces}#{line}" }
  sleep(0.05)
  system 'clear' unless spaces == 0
end

def display_graphic(art_name)
  ART[art_name]
end

def instructions
  puts message('instructions')
  puts message('continue')
  user_input('')
end

def suit(card)
  SUITS[card]
end

def prompt(message)
  puts "=> #{message}"
end

def message(type)
  MESSAGES[type]
end

def user_input(continue, cage=false)
  loop do
    go = gets.chomp.downcase
    return go unless cage
    return go if continue.include?(go)
    puts "Sorry, that's not a valid input."
  end
end

def initialize_deck!
  deck = {}
  SUITS.each_key do |suit|
    deck[suit] = CARDS.dup
  end
  deck
end

# rubocop:disable Metrics/AbcSize
def print_hand(cards, cpu=false)
  hand = cards.dup
  card_num = hand.length
  hand[0] = '??' if cpu
  card_num.times { print CARD_ART[0] + '  ' }
  puts ''
  card_num.times { |num| print CARD_ART[1] + hand[num][0] + '  | ' }
  puts ''
  card_num.times { |num| print CARD_ART[2] + SUITS[hand[num][1]] + ' | ' }
  puts ''
  card_num.times { |num| print CARD_ART[3] + hand[num][0] + '| ' }
  puts "\n\n"
end
# rubocop:enable Metrics/AbcSize

def deal_card!(deck)
  card_suit = ''
  loop do
    card_suit = SUITS.keys.sample
    break unless card_suit == '?'
  end
  card = deck[card_suit].sample
  deck[card_suit].delete(card)
  card + card_suit
end

def player_turn(player_cards, computer_cards)
  display_cards(player_cards, computer_cards, true)
  display_standings(player_cards, computer_cards, true)
  prompt(message('hitstay'))
  choice = user_input(%w(hit stay), true)
  choice
end

def computer_turn(player_cards, computer_cards)
  system 'clear'
  print_hand(computer_cards)
  puts ''
  print_hand(player_cards)
  display_standings(player_cards, computer_cards)
  sleep(1.2)
end

def display_cards(player_cards, computer_cards, hidden=false)
  system 'clear'
  print_hand(computer_cards, hidden)
  puts ''
  print_hand(player_cards)
end

def display_standings(player_cards, computer_cards, hidden=false)
  prompt("You have #{card_total(player_cards)}.")
  if hidden
    prompt("The Computer shows #{card_total(computer_cards, hidden)}.")
  else
    prompt("The Computer has #{card_total(computer_cards)}.")
  end
end

# rubocop:disable Metrics/AbcSize
def card_total(hand, hidden=false)
  work_hand = hand.dup
  work_hand.shift if hidden
  tens = work_hand.select { |card| %w(T J Q K).include?(card[0]) }.size * 10
  faces = 0
  work_hand.each { |card| faces += card[0].to_i if FACES.include?(card[0]) }
  aces = work_hand.select { |card| card[0] == 'A' }.count
  total = tens + faces
  total = count_aces(aces, total) if aces > 0
  total
end
# rubocop:enable Metrics/AbcSize

def count_aces(aces, total)
  loop do
    if total <= (11 - aces)
      total += 11
    else
      total += 1
    end
    aces -= 1
    break if aces == 0
  end
  total
end

def display_winner(player, computer)
  return 'You' if computer > 21
  return 'Computer' if player <= computer
  'You'
end

def game_over(winner, bj, bust)
  if winner == 'Computer'
    puts message('cpuwin')
  else
    puts message('youwin')
  end
  prompt(message('blackjack')) if bj
  prompt(message('bust')) if bust
  prompt(message('again'))
end

# title screen
display_intro
prompt(message('start'))
user_input(' ')
system 'clear'

# main game loop
skip_intro = false

loop do
  computer_cards = []
  player_cards = []
  winner = false
  play_deck = initialize_deck!
  bj = false
  bust = false

  instructions if skip_intro == false
  skip_intro = true

  2.times do
    computer_cards << deal_card!(play_deck)
    player_cards << deal_card!(play_deck)
  end

  player_sum = card_total(player_cards)
  computer_sum = card_total(computer_cards)

  # check for flop blackjack - ends the game if this happens
  if computer_sum == 21
    bj = true
    winner = 'Computer'
  elsif player_sum == 21 && winner != 'Computer'
    bj = true
    winner = 'Player'
  end

  unless winner
    loop do
      break if player_sum > 20
      hit_or_stay = player_turn(player_cards, computer_cards)
      break if hit_or_stay == 'stay'
      player_cards << deal_card!(play_deck)
      player_sum = card_total(player_cards)
    end
  end

  # checks to see if user busts and skips CPU turn
  if player_sum > 21
    winner = 'Computer'
    bust = true
  end

  unless winner
    loop do
      break if computer_sum > 16
      computer_turn(player_cards, computer_cards)
      computer_cards << deal_card!(play_deck)
      computer_sum = card_total(computer_cards)
      bust = true if computer_sum > 21
    end
  end

  system 'clear'
  display_cards(player_cards, computer_cards)
  display_standings(player_cards, computer_cards)
  winner = display_winner(player_sum, computer_sum) unless winner == 'Computer'
  game_over(winner, bj, bust)
  break unless user_input('yes').start_with?('y')
end
