# code your #valid_move? method here
def valid_move?(board, index)
  if index >= 0 && index <= 8
    return position_taken?(board,index)
  else
    return false
  end
end

# Helper function for valid_move
def position_taken?(board, index)
  if (board[index] == " " ||  board[index] == "" || board[index] == nil)
    return true
  else
    return false
  end
end

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#help place (X,O) on board
def move(board,index,character = "X")
  board[index] = character
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
