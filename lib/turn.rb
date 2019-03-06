# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  board_size = board.size

  if index > board_size || index < 0
    false
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    true
  else
    false
  end
end

def position_taken?(board, index)
  !valid_move?(board, index)
end

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, value = "X")
  if position_taken?(array, index)
    puts "Please enter 1-9:"
    input = gets.strip
  else
    array[index] = value
    display_board(array)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  move(board, index, "X")
end
