# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return index > -1 && index < board.size && !position_taken?(board, index)
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  spot = board[index]
  spot != " " && spot != "" && spot != nil
end
# move
def move(board, index, value="X")
  board[index] = value
end
# input to index
def input_to_index(user_input)
  user_input.chomp.to_i - 1
end
def turn(board, index=-1, value="X")
  while (index < 0 || index >= board.size || !valid_move?(board, index))
    puts "Please enter 1-9:"
    index = input_to_index(gets)
  end
  move(board, index, value)
  display_board(board)
end