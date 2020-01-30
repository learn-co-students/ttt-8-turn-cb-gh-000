# Should accept a board as an argument and print out the current state of the board for the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid method Should accept a board and an index from the user and return true
#if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  else
    true
end
end

def valid_move?(board, index)
  if index.between?(0, board.length) && !position_taken?(board, index)
    true
  end
end

# This method should accept a board, an index from the user (which was converted from their
#raw input with input_to_index), and a token to mark that position with (you can
#give that argument a default value of 'X'––we're not worrying about whose turn it is yet).
#The method should set the correct index value of that position within the board equal to the token
def input_to_index(input)
  input.to_i - 1
end

def move(board, position, x_or_o="X")
  board[position] = x_or_o
end

def turn(board)
  puts "Please enter 1-9:"
  nb = gets.strip
  nb = input_to_index(nb)
  while !valid_move?(board, nb)
    puts "Please enter 1-9:"
    nb = gets.strip
    nb = input_to_index(nb)
  end
  move(board, nb)
  display_board(board)
end
