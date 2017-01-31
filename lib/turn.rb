def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n" +
    " #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n" +
    " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  board[index] = (index.between?(0, 8) && !position_taken?(board, index)) ? "X" : false
end

def position_taken?(board, index)
  (board[index] != "") && (board[index] != " ") && (board[index] != nil)
end

def input_to_index(input = "1")
  input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets())
  if valid_move?(board, index)
    display_board(board)
  else
    turn(board)
  end
end
