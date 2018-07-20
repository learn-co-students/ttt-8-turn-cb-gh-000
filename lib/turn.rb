def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  display_board(board)
  input = gets.strip
  index = input_to_index(input)
  while !valid_move?(board,index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end

def input_to_index(input)
  input = input.to_i
  return input-1
end
def valid_move?(board,move)
  if move >-1 && move < 9 && !position_taken?(board,move)
    return true
  else
    return false
  end
end
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end
def move(board, index, pl= "X")
  board[index]=pl
end
