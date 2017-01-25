# Display
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Validation
def valid_move?(board, index)
  return position_taken?(board, index) && between?(index)
end

def position_taken?(board, index)
  return !(board[index] == "X" || board[index] == "O")
end

def between?(index)
  return index > -1 && index < 10
end

# To Integer
def input_to_index(index)
  index = index.to_i
  index = index - 1
end

def move(array, index, value="X")
  array[index] = value
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input, "X")
    display_board(board)
  else
    turn(board)
  end
end
