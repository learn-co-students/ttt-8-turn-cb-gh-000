def display_board(board)
  puts "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index]==" "|| board[index]=="" || board[index]==nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index>=0 && index<=board.length-1 && !position_taken?(board,index)
   return true
 else
   return false
 end
end

def input_to_index(user_input)
  user_input = user_input.to_i
  return user_input - 1
end

def move(board, user_input, token="X")

  if valid_move?(board, user_input)
    board[user_input] = token
  end

end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)

  if !valid_move?(board,index)
    turn(board)
  else
    move(board,index,"X")
    display_board(board)

  end

end
