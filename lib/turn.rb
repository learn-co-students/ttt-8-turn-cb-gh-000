def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !index.between?(0,8)
    return false
  elsif position_taken?(board, index)
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  empty = " "
  emptyTo = ""
  if board[index] == empty || board[index] == emptyTo || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(index)
  index = index.to_i
  index = index - 1
end

def move(board, index, player="X")
    board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets
  index = input_to_index(index)
  if valid_move?(board, index)
    move(board, index, player="X")
  else
    puts "Invalid input, please try again"
    index = gets
  end
  display_board(board)
end
