def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def valid_move?(board,index)
  if index < 0 || index > board.length - 1
    return false
  elsif position_taken?(board,index)
    return false
  end
  return true
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
  return true
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board,index)
    board[index] = "X"
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(input)
  integer = input.to_i
  if integer >= 1 && integer <= 9
    return integer-1
  else
    return -1
  end
end

def move(board,index,player)
  if valid_move?(board,index)
    board[index] = player
  end
end
