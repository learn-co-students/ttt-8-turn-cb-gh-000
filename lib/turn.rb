def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input = input.to_i
  if(input == 0)
    return -1 
  end
  return input - 1
end

def move(board, position, char = "X")
  board[position] = char
end

def valid_move?(board, index)
  if index >= 0 && index < 10 && position_taken?(board, index) == false
    return true
  else
    return false
  end
end
def position_taken?(board, index)
  if board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if(!valid_move?(board, index))
    turn(board)
  end
  move(board, index)
  display_board(board)
end
