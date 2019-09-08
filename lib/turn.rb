#turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

#Display tic tac toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#user input
def input_to_index(input)
  input = input.to_i
  input -= 1
end

# position_taken? method
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

#valid move method
def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0,8)
    return true
  else
    return false
  end
end

#move
def move(board , index, character = "X")
  board[index] = character
end
