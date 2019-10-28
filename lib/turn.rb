def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  (user_input.to_i) - 1
end

def valid_move?(board, index)
  if (board[index] == "X" || board[index] == "O") || !index.between?(0, 8)
    return false
  else
    return true
  end
end

def move(board, position, symbol="X")
  board[position] = symbol
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  while !valid_move?(board, input)
    puts "Incorrect input, please enter a number from 1 to 9"
    input = input_to_index(gets.strip)
  end
  move(board, input)
  display_board(board)
end
