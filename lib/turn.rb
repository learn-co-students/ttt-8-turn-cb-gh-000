def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#transform input to int
def input_to_index(input)
  return input.to_i - 1
end

def move(board,position,move="X")
  board[position] = move
  return board;
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
  input=gets
  new_input=input_to_index(input)
  if(new_input<9&&new_input>=0)
    check=valid_move?(board,new_input)
    if(check)
      display_board(move(board,new_input))
    end
  else
    turn(board)
  end
end
