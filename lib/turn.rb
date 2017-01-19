

def input_to_index(input)
  player_input = input.to_i
  player_input -= 1
end

def turn(board)
  good_input = false
  while good_input == false
    puts "Please enter 1-9:"
    player_input = gets.strip
    player_input = input_to_index(player_input)
    good_move = false
    if valid_move?(board, player_input) == true
      good_input = true
    end
  end
  move(board, player_input)
  display_board(board)
end

def move(board, index, player_character="X")
  board[index] = player_character
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == nil
    false
  elsif board[index] == ""
    false
  else
    true
  end
end
