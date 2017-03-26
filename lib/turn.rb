def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index input
  input = input.to_i
  input != 0 ? input -1 : -1
end

def move board, input, char="X"
  board[input]=char
end

def valid_move? board,index
  board[index] && board[index] != "X" && board[index] != "Y" && index > -1
end

def prelude
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index input
end

def turn board
  index = prelude
  if valid_move? board, index
    move board, index
  else
    prelude
  end
  display_board board
end
