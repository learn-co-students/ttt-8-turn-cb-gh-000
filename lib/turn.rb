def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " && board[index] == "" && board[index] != nil
    return true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board, input_to_index, token = "X")
  board[input_to_index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip.to_i
  index = input_to_index(user_input)
  if board[index] && valid_move?(board, index)
    board[index] = move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
  end
end
