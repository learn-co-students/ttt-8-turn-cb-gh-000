def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.strip
  index=input_to_index(user_input)
  valid_move=valid_move?(board,index)
  if valid_move==true
    new_board=move(board,index)
    display_board(new_board)
  else
    turn(board)
  end
end

def input_to_index(user_input)
  return index=user_input.to_i-1
end

def valid_move?(board,index)
  if (board[index]==""||board[index]==" ")&&(index>=0&&index<9)
    return true
  else
    return false
  end
end

def move(board,index,token="X")
  board[index]=token
  return board
end
