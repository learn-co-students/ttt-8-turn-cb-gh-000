def valid_move?(board,index)
#  move=input_to_index(index)
  if position_taken?(board,index) || !(index.between?(0,8))
    return false
 else
   return true
 end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
if board[index] == "   " || board[index] == "  " || board[index] == " " || board[index] == "" || board[index] == nil
  return false
else return true
end
end
def input_to_index(input)
l=input.to_i - 1
return l
end
def move(board,index,value="X")

    board[index]=value

end
def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
 end
 def turn(board)
   puts "Please enter 1-9:"
   input_index=gets
   index1=input_to_index(input_index)
   if  valid_move?(board,index1) == true
     move(board,index1,)
     display_board(board)
   else
     turn(board)
   end
 end
