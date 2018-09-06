def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input) - 1
  valid = valid_move?(board, index)
  if valid == true
    move(board, index, "X")
  else
    turn(board)
  end
end

def input_to_index(user_input)
  index = user_input.to_i
  return index
end

def valid_move(board, index)
  if index > 9 || index < 0
    return false
  else
    !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] =="X" || board[index] == "O"
    return true
  end
end

def move(board, index, symbol)
  board[index] = symbol
  display_board(board)
end

def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end
