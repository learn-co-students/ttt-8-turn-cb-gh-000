def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  while (!valid_move?(board, index))
    index = gets.strip
    index = input_to_index(index)
  end
  move(board, index)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(index)
  number = index.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character;
end

def valid_move?(board, index)
  return position_taken?(board, index)
end

def position_taken?(board=[" ", " ", " ", " ", "X", " ", " ", " ", " "], index)
  index = index.to_i
  if board[index] != nil && board[index].strip == "" && index != -1
    return true
  else
    return false
  end
end
