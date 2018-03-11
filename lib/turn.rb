def display_board(board)
  s = "-----------"

  puts " #{board[0]} | #{board[1]} | #{board[2]} ",s
  puts " #{board[3]} | #{board[4]} | #{board[5]} ",s
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  board[index] != " "
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  indx = input_to_index(input)

  if valid_move?(board, indx)
    move(board, indx)
    display_board(board)
  else
    turn(board)
  end
end
