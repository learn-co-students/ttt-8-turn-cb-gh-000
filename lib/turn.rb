def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, index)
  result = nil
  if board[index] == "" || board[index] == " " || board[index] == nil
    result = false;
  elsif board[index] == "X" || board[index] == "O"
    result = true
  end
  result
end

def valid_move?(board, index)
  result = false
  if index >= 0 &&
     index <= 8  &&
     !position_taken?(board, index)
    result = true
  end
  result
end

def move(board, index, piece = "X")
  board[index] = piece
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (!valid_move?(board, index))
    turn(board)
  end
  move(board, index)
  display_board(board)
end
