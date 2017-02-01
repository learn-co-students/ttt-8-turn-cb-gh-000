puts "What will your next move be?"

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(value)
  value = value.to_i - 1
  return value
end

def valid_move?(board, index) 
  if(index.between?(0,9)) then
    if(!position_taken?(board, index)) then
      return true
    end
  end
end


def turn(board)
  puts "Please enter 1-9:"
  value = gets.strip
  index = input_to_index(value)
  if(!valid_move?(board, index)) then
    turn(board)
  else 
    move(board, index)
    display_board(board)
  end
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, char = "X")
  board[index] = char
end

puts "Welcome to Tic Tac Toe"

display_board(board)