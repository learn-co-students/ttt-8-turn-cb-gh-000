
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " "
    return true
  elsif board[index] == ""
    return true
  elsif board[index] == "X"
    return false
  elsif board[index] == "O"
    return false
  else
    return false
  end
end

def valid_move?(board, index)
  if (index >= 0 && index <= 8) && position_taken?(board, index) == true
    return true
  else
    return false
  end
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
