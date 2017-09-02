def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index] == " "
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 && position_taken?(board,index)==false
    return true
  else
    return false
  end
end

def input_to_index(input)
  input = input.to_i
  input = input - 1
  return input
end

def move(board,index,token="X")
  if valid_move?(board, index) == true
    board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  valid_move?(board,index)
  while valid_move?(board,index) == false
    puts "Please enter a valid input!"
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end
