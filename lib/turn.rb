# Helper methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(ind_str)
  ind_str.to_i - 1
end

def move(board, ind, player_char="X")
  board[ind] = player_char
end

def valid_move?(board, ind)
  (ind >= 0 && ind < 9) && !position_taken?(board, ind)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, ind)
  board[ind] == "X" || board[ind] == "O"
end

def ask_input()
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
end

def turn(board)
  index = ask_input
  while !valid_move?(board, index)
    index = ask_input
  end
  move(board, index)
  display_board(board)
end
