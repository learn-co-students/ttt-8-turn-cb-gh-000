

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    puts "invalid"
    turn(board)
  else
    move(board, index)
    display_board(board)
  end
end

# fills board with proper symbol in given index
# assumes index and symbol is correct
def move(board, index, symbol = "X")
  board[index] = symbol
end
# Define display_board that accepts a board and prints
# out the current state.
def display_board(current_board)
  board = " #{current_board[0]} | #{current_board[1]} | #{current_board[2]} "
  board += "\n-----------\n #{current_board[3]} | #{current_board[4]} | #{current_board[5]} "
  board += "\n-----------\n #{current_board[6]} | #{current_board[7]} | #{current_board[8]} \n"
  puts board
end

# code your #valid_move? method here
def valid_move?(board_positions, position)
  !position_taken?(board_positions, position) && position.between?(0, 8)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board_positions, position)
  !(board_positions[position] == " " ||
   board_positions[position] == "" ||
   board_positions[position] == nil)
end

def input_to_index(input)
  index = input.to_i - 1
end
