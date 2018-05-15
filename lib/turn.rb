def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input -= 1
  if user_input == -1
    return -1
  else
    return user_input
  end
end

def valid_move?(board, index)
  if index >= 0 && index < 9
    if(position_taken?(board, index))
      true
    else
      false
    end
  else
    false
  end
end



def position_taken?(board, index)
  if board[index] == ""
    true
  elsif board[index] == " "
    true
  elsif board[index] == nil
    true
  else
    false
  end
end

def move(board, index, value)
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)
  if(valid_move?(board, user_input))
    move(board, user_input, "X")
    display_board(board)
  else
    turn(board)
  end
end
