def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  valid = index>=0 && index<board.length && board[index] != "X" && board[index] != "O"
  return valid
end

def move(board,index, player="X")
  if valid_move?(board,index)
    board[index] = player
    display_board(board)
  else
    turn(board)
  end
end

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  move(board,index)
end
