def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index > 8 || index < 0
    false
  elsif board[index] == "X" || board[index] == "O"
    false
  else
    true
  end
end

def input_to_index(input)
  index = input.to_i - 1
  index
end

def move(board, index, mark = "X")
  board[index] = mark
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i
  index = input_to_index(input)
  valid_move = valid_move?(board, index)
  while valid_move == false
    puts "Invalid move, try again"
    input = gets.to_i
    index = input_to_index(input)
    valid_move = valid_move?(board, index)
  end
  move(board, index)
  display_board(board)
end
