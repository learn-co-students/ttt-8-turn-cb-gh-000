def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  if num.to_i >= 1 and num.to_i <= 9
    return num.to_i - 1
  end
  return -1
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, ind)
  if ind > 8 or ind < 0
    return false
  end
  return !position_taken?(board, ind)
end

def position_taken?(board, ind)
  if board[ind] == " " or board[ind] == "" or board[ind] == nil
    return false
  elsif board[ind] == "X" or board[ind] == "O"
    return true
  end
end
