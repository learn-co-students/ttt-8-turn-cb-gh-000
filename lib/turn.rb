def display_board(board_array)
  puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
  puts "-----------"
  puts " #{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
  puts "-----------"
  puts " #{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || "O"
    return true
  end
end


def move(board, index, character = 'X')
  return board[index] = character
end

def input_to_index(user_input)
  user_index = user_input.to_i
  index = user_index - 1
  return index
end

def turn(board)
  puts "Please enter 1-9:"
  user_index = gets.strip
  index = input_to_index(user_index)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Not a valid move"
    user_index = gets.strip
  end
end
