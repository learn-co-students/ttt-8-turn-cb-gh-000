def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(pos)
  return pos.to_i - 1
end

def move(board,index,value="X")
  board[index]=value
end 

def valid_move?(board,index)
  if (index>=0 && index<9 && !(position_taken?(board,index)))
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board,index)
  if board[index]==" " || board[index]=="" || board[index]==nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position=gets.strip
  index=input_to_index(position)
  if(!valid_move?(board,index))
      turn(board)
  end
  move(board,index,"X")
  display_board(board)  
end    