def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
  return user_input
end

def valid_move?(board, index)
  valid_move = false
  index_between_pos = index.between?(0, 8)
  if index_between_pos and position_taken?(board, index)
    valid_move = true
  end
  return valid_move
end

def position_taken?(board, index)
  position_taken = false
  if board[index] != "X" and board[index] != "O"
    position_taken = true
  end
  return position_taken
end

def move(board, index, token="X")
  if valid_move?(board, index)
    board[index] = token
    display_board(board)
    return true
  else
    return false
  end
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    user_input = gets.strip
    user_input = input_to_index(user_input)
    if move(board, user_input, "X")
      break
    end
  end
end
