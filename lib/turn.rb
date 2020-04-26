def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1

  return input
end

def valid_move?(board, index)
  if !position_taken?(board, index) && (index).between?(0,8)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  selection = gets.strip
  input = input_to_index(selection)
  if valid_move?(board, input) == true
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end
