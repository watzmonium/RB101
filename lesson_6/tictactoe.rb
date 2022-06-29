INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
ORDER_CHOICES = %w(1 2 3)
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagnals

def prompt(in_string)
  puts "=> #{in_string}"
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(brd, first)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "#{first} goes first."
  puts ''
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ''
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(ary, fword='or ')
  case ary.size
  when 0 then ''
  when 1 then ary.first
  when 2 then ary.join(" #{fword} ")
  else
    work_arr = ary.clone
    and_word = work_arr.pop.to_s
    work_arr.join(', ') + ', ' + fword + and_word
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    choices = joinor(empty_squares(brd))
    prompt "Choose a square (#{choices}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = winning_move(brd, PLAYER_MARKER)
  square = winning_move(brd, COMPUTER_MARKER) if square == 0
  unless square == 0
    brd[square[0]] = COMPUTER_MARKER
    return
  end

  square_ar = empty_squares(brd)
  odds = square_ar.select(&:odd?)
  square = square_ar.sample if odds.empty?
  if square == 0
    square = odds.include?(5) ? 5 : odds.sample
  end

  brd[square] = COMPUTER_MARKER
end

def winning_move(brd, marker)
  WINNING_LINES.each do |set|
    # brd.values_at(*line).count(PLAYER_MARKER) == 2
    if set.select { |space| brd[space] == marker }.size == 2
      piece = set.select { |space| brd[space] == INITIAL_MARKER }
      return piece unless piece.empty?
    end
  end
  0
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |set|
    # brd.values_at(*line).count(PLAYER_MARKER) == 3
    if set.select { |space| brd[space] == PLAYER_MARKER }.size == 3
      return 'Player'
    elsif set.select { |space| brd[space] == COMPUTER_MARKER }.size == 3
      return 'Computer'
    end
  end
  nil
end

def turn_order
  loop do
    system 'clear'
    prompt "Welcome to Tic Tac Toe! First to 5 wins!"
    prompt "Who would you like to go first?"
    prompt "1) Player"
    prompt "2) Computer"
    prompt "3) Random"
    first = gets.chomp
    first = %w(1 2).sample if first == '3'
    return first if ORDER_CHOICES.include?(first)
    prompt "Sorry, that's not a valid choice"
  end
end

def place_piece!(brd, current_player)
  case current_player
  when 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(person)
  return 'Computer' if person == 'Player'
  'Player'
end

def play_game(order, board)
  loop do
    display_board(board, order)
    place_piece!(board, order)
    order = alternate_player(order)
    return if someone_won?(board) || board_full?(board)
  end
end

def clear_board
  { 'Player' => 0, 'Computer' => 0 }
end

score = clear_board
# main game loop
loop do
  board = initialize_board
  first = turn_order
  order = first == '1' ? 'Player' : 'Computer'
  play_game(order, board)

  display_board(board, order)
  if someone_won?(board)
    win_name = detect_winner(board)
    prompt "#{win_name} won!"
    score[win_name] += 1
  else
    prompt "It's a tie!"
  end

  prompt "Standings: Player: #{score['Player']} win(s), Computer:" \
          "#{score['Computer']} win(s)"
  if score['Player'] == 5
    puts "Player wins! ez game ez life."
    score = clear_board
  elsif score['Computer'] == 5
    puts "Computer wins! Better Luck next time."
    score = clear_board
  end

  prompt "Do you want to play again? ('y' if yes)"
  again = gets.chomp
  break unless again.start_with?('y')
end

puts "Thanks for playing!"
