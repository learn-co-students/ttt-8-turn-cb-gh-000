def display_row(a, b , c)
  puts " #{a} | #{b} | #{c} "
end

def display_board(board)
  separator = "-----------"
  display_row(board[0], board[1], board[2])
  puts separator
  display_row(board[3], board[4], board[5])
  puts separator
  display_row(board[6], board[7], board[8])
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  return index >= 0 && index <= 8 && !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  return ! (board[index] == '' || board[index] == ' ' || board[index] == nil)
end

def move(board, index, token='X')
  board[index] = token
end

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
