def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(move)
  return move.to_i - 1
end

def move(board, position, char = 'X')
    board[position] = char
    return board
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index <= 8 && index >= 0
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def welcome()
  puts "Welcome to Tic Tac Toe!"
end

def turn_msg()
  puts "Please input 1-9"
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  index = input_to_index(position)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
  turn(board)
end
end