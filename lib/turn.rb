# Will display our tick tac toe board!
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Will convert the user's place on the board to the index into
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

# Validates user entry and checks if position is taken
def valid_move?(board, index)
  if (position_taken?(board, index)) == false && index.between?(0,8)
    return true
  end
end
def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    else
      return true
    end
  end

def move(board, index, player_char = "X")
  board[index] = player_char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  selection = gets.chomp
  index = input_to_index(selection)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
