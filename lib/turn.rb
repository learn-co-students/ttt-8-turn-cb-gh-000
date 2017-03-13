def turn(board, player = "X")
  puts "Please enter 1-9:"
  input = gets.strip
  i = input_to_index(input)
  if !valid_move?(board, i)
    turn(board)
  end
  move(board, i, player)
  display_board(board)
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, i, player)
  board[i] = player
end
  
# code your #valid_move? method here
def valid_move?(board, i)
  if (i < 0 || i > 9)
    return false
  else
    return !position_taken?(board, i)
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, i)
  return board[i] != " "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end