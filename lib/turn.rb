def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def move(board, index, character="X")
    board[index] = character
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index > board.length || index < 0
    return false
  end
  return !position_taken?(board, index)
  # return !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input.to_i)
  move = valid_move?(board, index)
  if move
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
  return if move
end
