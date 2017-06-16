def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  result = false
  if board[index] != " " && board[index] != "" && board[index] != nil
    result = true;
  end
  return result
end

def move(board, input, character="X")
  if input < 0
   input = input + 1
  end
  board[input] = character
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
end

def turn(board)
  puts "Please enter 1-9:"
  puts "/n"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index)
    display_board(board)
  end
end

def valid_move?(board, index)
  result = false
  if index >= 0 && index <= 8 && !position_taken?(board, index)
    result = true
  end
  return result
end
