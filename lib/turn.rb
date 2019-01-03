def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  index = input_to_index(position)
  move(board, index)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  space_empty = board[index] == " " || board[index] == "" || board[index] == nil
  index_valid = index.between?(0,8)
  space_empty && index_valid
end

def move(board, index, value = "X")
  if valid_move?(board, index)
    board[index] = value
	  display_board(board)
  else
    turn(board)
  end
end
