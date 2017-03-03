def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, i)
  !(board[i] == " " || board[i] == "" || board[i] == nil)
end

def valid_move?(board, i)
  i >= 0 && i <= 8 && !position_taken?(board, i)
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, i, token = "X")
  board[i] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  parsed_input = input_to_index(input)
  if valid_move?(board, parsed_input)
    move(board, parsed_input)
    display_board(board)
  else
    turn(board)
  end
end