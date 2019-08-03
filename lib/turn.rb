def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  return true
end

def input_to_index(number)
  number = number.to_i
  return number -1
end

def valid_move?(board, index)
  if !(index.between?(0,8))
    return false
  end
  if position_taken(board, index) == true
    return false
  else
    return true
  end
end

def position_taken(board, index)
  place = board[index]
  if place == " " or place == "" or place == nil
    return false
  else
    return true
  end
end

def move(board, index, token="X")
  board[index] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end
