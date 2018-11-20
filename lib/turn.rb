# display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# move the things
def move(board, index, value = "X")
  board[index] = value
  return board
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == nil or board[index] == "" or board[index] == " "
    return false
  elsif board[index] == "X" or board[index] == "O"
    return true
  end
end

# its my turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
