def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(i)
  return i.to_i - 1
end
def move(b,i,f="X")
  b[i] = f
  return b;
end
# code your #valid_move? method here
def valid_move?(board,index)
  if(index.between?(0,8)&& !position_taken?(board,index))
    return true
  else
    return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if(board[index]==" "||board[index]==""||board[index]==nil)
    return false
  else
    return true
  end
end
def turn(board)
  puts "Please enter 1-9:"
  a=gets
  b=input_to_index(a)
  if(b<9&&b>=0)
    c=valid_move?(board,b)
    if(c)
      display_board(move(board,b))
    end
  else
    turn(board)
  end
end
