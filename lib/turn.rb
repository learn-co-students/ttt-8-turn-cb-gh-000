def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(input)
  input=input.to_i
  return index=input-1
end

def move(board,index,value="X")
  board[index]=value
  return board
end

def position_taken?(board,index)
  if board[index]=="" || board[index]==" " || board[index]==nil
    return false
  else board[index]=="X" || board[index]=="O"
    return true
  end
end
def valid_move?(board, index)
  is=position_taken?(board,index)
  if index.between?(0,8)==true && is==false
    return true
  else
    return false
  end
end
def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  r=valid_move?(board,index)
  if r==true
    board=move(board,index,value="X")
    display_board(board)
  else
    turn(board)
  end
end
