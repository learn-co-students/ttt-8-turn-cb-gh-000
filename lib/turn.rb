#helper methods:

def display_board(state_of_board)
  puts " #{state_of_board[0]} | #{state_of_board[1]} | #{state_of_board[2]} "
  puts "-----------"
  puts " #{state_of_board[3]} | #{state_of_board[4]} | #{state_of_board[5]} "
  puts "-----------"
  puts " #{state_of_board[6]} | #{state_of_board[7]} | #{state_of_board[8]} "
end


def input_to_index(input)
  index = input.to_i-1
end


def position_taken?(array, index)
  if array[index] == "  " || array[index] == " " || array[index] == "" || array[index] == nil
    return false
  else
    return true
  end
end


def valid_move?(validation_array, validation_index)
  if position_taken?(validation_array, validation_index)
    return false
  else if validation_index <= 8 && validation_index >=0
    return true
  end
  end
end

def move(board, index_number, player_sign = "X")
  board[index_number]=player_sign
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index_number = input_to_index(user_input)
  if valid_move?(board,index_number)
    move(board,index_number)
  else
    puts "Validation of your move failed. Please enter 1-9, again:"
    turn(board)
  end
end
