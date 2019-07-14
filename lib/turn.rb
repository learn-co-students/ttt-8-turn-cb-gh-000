
def move(board, index, token)
  board[index] = token
  return board
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if(index >= 0 && index <= 8 && board[index] != "X" && board[index] != "O")
    return true
  else
    return false
  end
end

def input_to_index(input)
  index = input.strip.to_i - 1
  return index
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index)
    board = move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
