def display_board(board)
   separator = "-----------"
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts " #{separator}"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts " #{separator}"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board,index)
  if((index >= 0) && (index <= 8) && (board[index] == " "))
    return true
  else
    return false
  end
end

def move(board,index,token='X')
  board[index]=token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input= gets.strip
  input_to_index(user_input)
  valid_move?(board,(user_input.to_i - 1))
  if(((user_input.to_i - 1) >= 0) && ((user_input.to_i - 1) <= 8))
    move(board,(user_input.to_i - 1),token='X')
    display_board(board)
  else
    turn(board)
  end

end
