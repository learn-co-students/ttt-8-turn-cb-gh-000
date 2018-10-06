def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

# code your #valid_move? method here
def valid_move?(board, index)
  return index.between?(0, 8) && !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  return board[index] != nil && board[index] != "" && board[index] != " "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  index = input_to_index(user_input)

  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    user_input = gets
    index = input_to_index(user_input)
  end

  move(board, index, current_player = "X")
  display_board(board)
end
